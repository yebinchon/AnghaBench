; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_report_mt_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_report_mt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.input_dev*, %struct.alps_data* }
%struct.input_dev = type { i32 }
%struct.alps_data = type { %struct.alps_fields }
%struct.alps_fields = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MAX_TOUCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*, i32)* @alps_report_mt_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_report_mt_data(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.alps_data*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.alps_fields*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 1
  %13 = load %struct.alps_data*, %struct.alps_data** %12, align 8
  store %struct.alps_data* %13, %struct.alps_data** %5, align 8
  %14 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %15 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %14, i32 0, i32 0
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %6, align 8
  %17 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %18 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %17, i32 0, i32 0
  store %struct.alps_fields* %18, %struct.alps_fields** %7, align 8
  %19 = load i32, i32* @MAX_TOUCHES, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %24 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %25 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @input_mt_assign_slots(%struct.input_dev* %23, i32* %22, %struct.TYPE_2__* %26, i32 %27, i32 0)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %56, %2
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %29
  %34 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %22, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %40 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.alps_fields*, %struct.alps_fields** %7, align 8
  %48 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @alps_set_slot(%struct.input_dev* %34, i32 %38, i32 %46, i32 %54)
  br label %56

56:                                               ; preds = %33
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %29

59:                                               ; preds = %29
  %60 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %61 = call i32 @input_mt_sync_frame(%struct.input_dev* %60)
  %62 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %62)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @input_mt_assign_slots(%struct.input_dev*, i32*, %struct.TYPE_2__*, i32, i32) #2

declare dso_local i32 @alps_set_slot(%struct.input_dev*, i32, i32, i32) #2

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
