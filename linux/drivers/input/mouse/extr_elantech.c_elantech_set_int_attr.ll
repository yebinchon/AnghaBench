; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_set_int_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_set_int_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.elantech_data* }
%struct.elantech_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.elantech_attr_data = type { i32, i32 }

@ETP_R10_ABSOLUTE_MODE = common dso_local global i8 0, align 1
@ETP_R11_4_BYTE_MODE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i8*, i8*, i64)* @elantech_set_int_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_set_int_attr(%struct.psmouse* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.elantech_data*, align 8
  %11 = alloca %struct.elantech_attr_data*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 0
  %17 = load %struct.elantech_data*, %struct.elantech_data** %16, align 8
  store %struct.elantech_data* %17, %struct.elantech_data** %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.elantech_attr_data*
  store %struct.elantech_attr_data* %19, %struct.elantech_attr_data** %11, align 8
  %20 = load %struct.elantech_data*, %struct.elantech_data** %10, align 8
  %21 = bitcast %struct.elantech_data* %20 to i8*
  %22 = load %struct.elantech_attr_data*, %struct.elantech_attr_data** %11, align 8
  %23 = getelementptr inbounds %struct.elantech_attr_data, %struct.elantech_attr_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @kstrtou8(i8* %27, i32 16, i8* %13)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %5, align 4
  br label %84

33:                                               ; preds = %4
  %34 = load %struct.elantech_data*, %struct.elantech_data** %10, align 8
  %35 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %65

39:                                               ; preds = %33
  %40 = load %struct.elantech_attr_data*, %struct.elantech_attr_data** %11, align 8
  %41 = getelementptr inbounds %struct.elantech_attr_data, %struct.elantech_attr_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 16
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i8, i8* @ETP_R10_ABSOLUTE_MODE, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* %13, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %48, %46
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %13, align 1
  br label %64

51:                                               ; preds = %39
  %52 = load %struct.elantech_attr_data*, %struct.elantech_attr_data** %11, align 8
  %53 = getelementptr inbounds %struct.elantech_attr_data, %struct.elantech_attr_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 17
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i8, i8* @ETP_R11_4_BYTE_MODE, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* %13, align 1
  %60 = zext i8 %59 to i32
  %61 = or i32 %60, %58
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %13, align 1
  br label %63

63:                                               ; preds = %56, %51
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %33
  %66 = load %struct.elantech_attr_data*, %struct.elantech_attr_data** %11, align 8
  %67 = getelementptr inbounds %struct.elantech_attr_data, %struct.elantech_attr_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %72 = load %struct.elantech_attr_data*, %struct.elantech_attr_data** %11, align 8
  %73 = getelementptr inbounds %struct.elantech_attr_data, %struct.elantech_attr_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i8, i8* %13, align 1
  %76 = call i64 @elantech_write_reg(%struct.psmouse* %71, i32 %74, i8 zeroext %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70, %65
  %79 = load i8, i8* %13, align 1
  %80 = load i8*, i8** %12, align 8
  store i8 %79, i8* %80, align 1
  br label %81

81:                                               ; preds = %78, %70
  %82 = load i64, i64* %9, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %81, %31
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @kstrtou8(i8*, i32, i8*) #1

declare dso_local i64 @elantech_write_reg(%struct.psmouse*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
