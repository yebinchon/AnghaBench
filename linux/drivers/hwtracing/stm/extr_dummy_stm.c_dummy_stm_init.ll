; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_dummy_stm.c_dummy_stm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_dummy_stm.c_dummy_stm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@nr_dummies = common dso_local global i32 0, align 4
@DUMMY_STM_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@master_min = common dso_local global i64 0, align 8
@master_max = common dso_local global i64 0, align 8
@STP_MASTER_MAX = common dso_local global i64 0, align 8
@nr_channels = common dso_local global i64 0, align 8
@STP_CHANNEL_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"dummy_stm.%d\00", align 1
@dummy_stm = common dso_local global %struct.TYPE_4__* null, align 8
@dummy_stm_packet = common dso_local global i32 0, align 4
@dummy_stm_link = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dummy_stm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_stm_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @ENOMEM, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @nr_dummies, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @nr_dummies, align 4
  %10 = load i32, i32* @DUMMY_STM_MAX, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %0
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %1, align 4
  br label %122

15:                                               ; preds = %8
  %16 = load i64, i64* @master_min, align 8
  %17 = load i64, i64* @master_max, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* @master_max, align 8
  %21 = load i64, i64* @STP_MASTER_MAX, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @nr_channels, align 8
  %25 = load i64, i64* @STP_CHANNEL_MAX, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %19, %15
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %1, align 4
  br label %122

30:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %93, %30
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @nr_dummies, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %96

35:                                               ; preds = %31
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @kasprintf(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dummy_stm, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %38, i32* %43, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dummy_stm, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %35
  br label %97

52:                                               ; preds = %35
  %53 = load i64, i64* @master_min, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dummy_stm, align 8
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  store i64 %53, i64* %58, align 8
  %59 = load i64, i64* @master_max, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dummy_stm, align 8
  %61 = load i32, i32* %2, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  store i64 %59, i64* %64, align 8
  %65 = load i64, i64* @nr_channels, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dummy_stm, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  store i64 %65, i64* %70, align 8
  %71 = load i32, i32* @dummy_stm_packet, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dummy_stm, align 8
  %73 = load i32, i32* %2, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i32 %71, i32* %76, align 8
  %77 = load i32, i32* @dummy_stm_link, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dummy_stm, align 8
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i32 %77, i32* %82, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dummy_stm, align 8
  %84 = load i32, i32* %2, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = load i32, i32* @THIS_MODULE, align 4
  %88 = call i32 @stm_register_device(i32* null, %struct.TYPE_4__* %86, i32 %87)
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %3, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %52
  br label %109

92:                                               ; preds = %52
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %2, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %2, align 4
  br label %31

96:                                               ; preds = %31
  store i32 0, i32* %1, align 4
  br label %122

97:                                               ; preds = %51
  %98 = load i32, i32* %2, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %117, %97
  %101 = load i32, i32* %2, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %100
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dummy_stm, align 8
  %105 = load i32, i32* %2, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = call i32 @stm_unregister_device(%struct.TYPE_4__* %107)
  br label %109

109:                                              ; preds = %103, %91
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dummy_stm, align 8
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @kfree(i32 %115)
  br label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %2, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %2, align 4
  br label %100

120:                                              ; preds = %100
  %121 = load i32, i32* %3, align 4
  store i32 %121, i32* %1, align 4
  br label %122

122:                                              ; preds = %120, %96, %27, %12
  %123 = load i32, i32* %1, align 4
  ret i32 %123
}

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @stm_register_device(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @stm_unregister_device(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
