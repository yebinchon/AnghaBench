; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_report_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_report_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_drvdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@CONTACT_TOOL_TYPE_MASK = common dso_local global i32 0, align 4
@MT_TOOL_PALM = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_LEFT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_drvdata*, i32*, i32)* @asus_report_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_report_input(%struct.asus_drvdata* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asus_drvdata*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.asus_drvdata* %0, %struct.asus_drvdata** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @MT_TOOL_FINGER, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  store i32* %14, i32** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.asus_drvdata*, %struct.asus_drvdata** %5, align 8
  %17 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.asus_drvdata*, %struct.asus_drvdata** %5, align 8
  %22 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %20, %25
  %27 = add nsw i32 3, %26
  %28 = icmp ne i32 %15, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %122

30:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %98, %30
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.asus_drvdata*, %struct.asus_drvdata** %5, align 8
  %34 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %101

39:                                               ; preds = %31
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 3
  %45 = call i32 @BIT(i32 %44)
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load %struct.asus_drvdata*, %struct.asus_drvdata** %5, align 8
  %52 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 5
  br i1 %56, label %57, label %70

57:                                               ; preds = %39
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CONTACT_TOOL_TYPE_MASK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @MT_TOOL_PALM, align 4
  br label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @MT_TOOL_FINGER, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %68, %39
  %71 = load %struct.asus_drvdata*, %struct.asus_drvdata** %5, align 8
  %72 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @input_mt_slot(i32 %73, i32 %74)
  %76 = load %struct.asus_drvdata*, %struct.asus_drvdata** %5, align 8
  %77 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @input_mt_report_slot_state(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %70
  %85 = load %struct.asus_drvdata*, %struct.asus_drvdata** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @asus_report_contact_down(%struct.asus_drvdata* %85, i32 %86, i32* %87)
  %89 = load %struct.asus_drvdata*, %struct.asus_drvdata** %5, align 8
  %90 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %10, align 8
  br label %97

97:                                               ; preds = %84, %70
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %31

101:                                              ; preds = %31
  %102 = load %struct.asus_drvdata*, %struct.asus_drvdata** %5, align 8
  %103 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @BTN_LEFT, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @BTN_LEFT_MASK, align 4
  %110 = and i32 %108, %109
  %111 = call i32 @input_report_key(i32 %104, i32 %105, i32 %110)
  %112 = load %struct.asus_drvdata*, %struct.asus_drvdata** %5, align 8
  %113 = call i32 @asus_report_tool_width(%struct.asus_drvdata* %112)
  %114 = load %struct.asus_drvdata*, %struct.asus_drvdata** %5, align 8
  %115 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @input_mt_sync_frame(i32 %116)
  %118 = load %struct.asus_drvdata*, %struct.asus_drvdata** %5, align 8
  %119 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @input_sync(i32 %120)
  store i32 1, i32* %4, align 4
  br label %122

122:                                              ; preds = %101, %29
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @input_mt_slot(i32, i32) #1

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i32) #1

declare dso_local i32 @asus_report_contact_down(%struct.asus_drvdata*, i32, i32*) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @asus_report_tool_width(%struct.asus_drvdata*) #1

declare dso_local i32 @input_mt_sync_frame(i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
