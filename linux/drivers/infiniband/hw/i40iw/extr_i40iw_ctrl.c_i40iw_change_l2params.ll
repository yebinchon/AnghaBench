; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_change_l2params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_change_l2params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_vsi = type { i64, %struct.TYPE_2__*, %struct.i40iw_sc_dev* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.i40iw_sc_dev = type { i32 }
%struct.i40iw_l2params = type { i64, i64* }
%struct.i40iw_sc_qp = type { i64 }

@I40IW_MAX_USER_PRIORITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_change_l2params(%struct.i40iw_sc_vsi* %0, %struct.i40iw_l2params* %1) #0 {
  %3 = alloca %struct.i40iw_sc_vsi*, align 8
  %4 = alloca %struct.i40iw_l2params*, align 8
  %5 = alloca %struct.i40iw_sc_dev*, align 8
  %6 = alloca %struct.i40iw_sc_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.i40iw_sc_vsi* %0, %struct.i40iw_sc_vsi** %3, align 8
  store %struct.i40iw_l2params* %1, %struct.i40iw_l2params** %4, align 8
  %11 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %12 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %11, i32 0, i32 2
  %13 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %12, align 8
  store %struct.i40iw_sc_dev* %13, %struct.i40iw_sc_dev** %5, align 8
  store %struct.i40iw_sc_qp* null, %struct.i40iw_sc_qp** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %15 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.i40iw_l2params*, %struct.i40iw_l2params** %4, align 8
  %18 = getelementptr inbounds %struct.i40iw_l2params, %struct.i40iw_l2params* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.i40iw_l2params*, %struct.i40iw_l2params** %4, align 8
  %23 = getelementptr inbounds %struct.i40iw_l2params, %struct.i40iw_l2params* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %26 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %28 = call i32 @i40iw_reinitialize_ieq(%struct.i40iw_sc_dev* %27)
  br label %29

29:                                               ; preds = %21, %2
  %30 = load %struct.i40iw_l2params*, %struct.i40iw_l2params** %4, align 8
  %31 = getelementptr inbounds %struct.i40iw_l2params, %struct.i40iw_l2params* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = call i32 @i40iw_fill_qos_list(i64* %32)
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %117, %29
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @I40IW_MAX_USER_PRIORITY, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %120

38:                                               ; preds = %34
  %39 = load %struct.i40iw_l2params*, %struct.i40iw_l2params** %4, align 8
  %40 = getelementptr inbounds %struct.i40iw_l2params, %struct.i40iw_l2params* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  %46 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %47 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %38
  %58 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %59 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %68 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %75 = call %struct.i40iw_sc_qp* @i40iw_get_qp(i32* %73, %struct.i40iw_sc_qp* %74)
  store %struct.i40iw_sc_qp* %75, %struct.i40iw_sc_qp** %6, align 8
  br label %76

76:                                               ; preds = %89, %57
  %77 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %78 = icmp ne %struct.i40iw_sc_qp* %77, null
  br i1 %78, label %79, label %99

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i64, i64* %9, align 8
  %84 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %85 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %87 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %88 = call i32 @i40iw_qp_suspend_resume(%struct.i40iw_sc_dev* %86, %struct.i40iw_sc_qp* %87, i32 1)
  br label %89

89:                                               ; preds = %82, %79
  %90 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %91 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %98 = call %struct.i40iw_sc_qp* @i40iw_get_qp(i32* %96, %struct.i40iw_sc_qp* %97)
  store %struct.i40iw_sc_qp* %98, %struct.i40iw_sc_qp** %6, align 8
  br label %76

99:                                               ; preds = %76
  %100 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %101 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load i64, i64* %9, align 8
  %110 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %111 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i64 %109, i64* %116, align 8
  br label %117

117:                                              ; preds = %99
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %34

120:                                              ; preds = %34
  ret void
}

declare dso_local i32 @i40iw_reinitialize_ieq(%struct.i40iw_sc_dev*) #1

declare dso_local i32 @i40iw_fill_qos_list(i64*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.i40iw_sc_qp* @i40iw_get_qp(i32*, %struct.i40iw_sc_qp*) #1

declare dso_local i32 @i40iw_qp_suspend_resume(%struct.i40iw_sc_dev*, %struct.i40iw_sc_qp*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
