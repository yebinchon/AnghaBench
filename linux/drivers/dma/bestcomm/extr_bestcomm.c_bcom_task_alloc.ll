; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/bestcomm/extr_bestcomm.c_bcom_task_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/bestcomm/extr_bestcomm.c_bcom_task_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bcom_task = type { i32, i32, i32, %struct.bcom_task*, i32, i64, i32, i8* }

@bcom_eng = common dso_local global %struct.TYPE_4__* null, align 8
@BCOM_MAX_TASKS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bcom_task* @bcom_task_alloc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bcom_task*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcom_task*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bcom_eng, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.bcom_task* null, %struct.bcom_task** %4, align 8
  br label %165

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bcom_eng, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = call i32 @spin_lock(i32* %16)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %42, %14
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @BCOM_MAX_TASKS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bcom_eng, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %22
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bcom_eng, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %9, align 4
  br label %45

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %18

45:                                               ; preds = %32, %18
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bcom_eng, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store %struct.bcom_task* null, %struct.bcom_task** %4, align 8
  br label %165

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 56, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.bcom_task* @kzalloc(i32 %56, i32 %57)
  store %struct.bcom_task* %58, %struct.bcom_task** %10, align 8
  %59 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %60 = icmp ne %struct.bcom_task* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  br label %133

62:                                               ; preds = %52
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %65 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %70 = bitcast %struct.bcom_task* %69 to i8*
  %71 = getelementptr i8, i8* %70, i64 56
  %72 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %73 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %72, i32 0, i32 7
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bcom_eng, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %79 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @irq_of_parse_and_map(i32 %77, i32 %80)
  %82 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %83 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %82, i32 0, i32 5
  store i64 %81, i64* %83, align 8
  %84 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %85 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %74
  br label %133

89:                                               ; preds = %74
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %131

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call %struct.bcom_task* @kmalloc_array(i32 %93, i32 8, i32 %94)
  %96 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %97 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %96, i32 0, i32 3
  store %struct.bcom_task* %95, %struct.bcom_task** %97, align 8
  %98 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %99 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %98, i32 0, i32 3
  %100 = load %struct.bcom_task*, %struct.bcom_task** %99, align 8
  %101 = icmp ne %struct.bcom_task* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %92
  br label %133

103:                                              ; preds = %92
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %6, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %108 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %107, i32 0, i32 6
  %109 = call i32 @bcom_sram_alloc(i32 %106, i32 4, i32* %108)
  %110 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %111 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %113 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %103
  br label %133

117:                                              ; preds = %103
  %118 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %119 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %6, align 4
  %123 = mul nsw i32 %121, %122
  %124 = call i32 @memset(i32 %120, i32 0, i32 %123)
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %127 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %130 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %117, %89
  %132 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  store %struct.bcom_task* %132, %struct.bcom_task** %4, align 8
  br label %165

133:                                              ; preds = %116, %102, %88, %61
  %134 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %135 = icmp ne %struct.bcom_task* %134, null
  br i1 %135, label %136, label %157

136:                                              ; preds = %133
  %137 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %138 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %143 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @irq_dispose_mapping(i64 %144)
  br label %146

146:                                              ; preds = %141, %136
  %147 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %148 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @bcom_sram_free(i32 %149)
  %151 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %152 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %151, i32 0, i32 3
  %153 = load %struct.bcom_task*, %struct.bcom_task** %152, align 8
  %154 = call i32 @kfree(%struct.bcom_task* %153)
  %155 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %156 = call i32 @kfree(%struct.bcom_task* %155)
  br label %157

157:                                              ; preds = %146, %133
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bcom_eng, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  store i32 0, i32* %164, align 4
  store %struct.bcom_task* null, %struct.bcom_task** %4, align 8
  br label %165

165:                                              ; preds = %157, %131, %51, %13
  %166 = load %struct.bcom_task*, %struct.bcom_task** %4, align 8
  ret %struct.bcom_task* %166
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.bcom_task* @kzalloc(i32, i32) #1

declare dso_local i64 @irq_of_parse_and_map(i32, i32) #1

declare dso_local %struct.bcom_task* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @bcom_sram_alloc(i32, i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @irq_dispose_mapping(i64) #1

declare dso_local i32 @bcom_sram_free(i32) #1

declare dso_local i32 @kfree(%struct.bcom_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
