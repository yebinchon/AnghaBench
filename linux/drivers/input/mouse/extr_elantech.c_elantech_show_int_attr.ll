; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_show_int_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_show_int_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.elantech_data* }
%struct.elantech_data = type { i32 }
%struct.elantech_attr_data = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i8*, i8*)* @elantech_show_int_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_show_int_attr(%struct.psmouse* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.elantech_data*, align 8
  %8 = alloca %struct.elantech_attr_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  %13 = load %struct.elantech_data*, %struct.elantech_data** %12, align 8
  store %struct.elantech_data* %13, %struct.elantech_data** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.elantech_attr_data*
  store %struct.elantech_attr_data* %15, %struct.elantech_attr_data** %8, align 8
  %16 = load %struct.elantech_data*, %struct.elantech_data** %7, align 8
  %17 = bitcast %struct.elantech_data* %16 to i8*
  %18 = load %struct.elantech_attr_data*, %struct.elantech_attr_data** %8, align 8
  %19 = getelementptr inbounds %struct.elantech_attr_data, %struct.elantech_attr_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %17, i64 %21
  store i8* %22, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.elantech_attr_data*, %struct.elantech_attr_data** %8, align 8
  %24 = getelementptr inbounds %struct.elantech_attr_data, %struct.elantech_attr_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %29 = load %struct.elantech_attr_data*, %struct.elantech_attr_data** %8, align 8
  %30 = getelementptr inbounds %struct.elantech_attr_data, %struct.elantech_attr_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @elantech_read_reg(%struct.psmouse* %28, i32 %31, i8* %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %27, %3
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.elantech_attr_data*, %struct.elantech_attr_data** %8, align 8
  %37 = getelementptr inbounds %struct.elantech_attr_data, %struct.elantech_attr_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %48

44:                                               ; preds = %40, %34
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  br label %48

48:                                               ; preds = %44, %43
  %49 = phi i32 [ -1, %43 ], [ %47, %44 ]
  %50 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %49)
  ret i32 %50
}

declare dso_local i32 @elantech_read_reg(%struct.psmouse*, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
