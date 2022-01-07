; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_assign_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_assign_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.qib_user_info = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@QIB_PORT_ALG_ACROSS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QIB_USER_SWMAJOR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@QIB_PORT_ALG_COUNT = common dso_local global i32 0, align 4
@qib_mutex = common dso_local global i32 0, align 4
@QIB_USER_MINOR_BASE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_3__* null, align 8
@qib_cpulist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.qib_user_info*)* @qib_assign_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_assign_ctxt(%struct.file* %0, %struct.qib_user_info* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.qib_user_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.qib_user_info* %1, %struct.qib_user_info** %4, align 8
  %13 = load i32, i32* @QIB_PORT_ALG_ACROSS, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.file*, %struct.file** %3, align 8
  %15 = call %struct.TYPE_4__* @ctxt_fp(%struct.file* %14)
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %139

20:                                               ; preds = %2
  %21 = load %struct.qib_user_info*, %struct.qib_user_info** %4, align 8
  %22 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 16
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @QIB_USER_SWMAJOR, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %139

31:                                               ; preds = %20
  %32 = load %struct.qib_user_info*, %struct.qib_user_info** %4, align 8
  %33 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 65535
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp uge i32 %36, 11
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load %struct.qib_user_info*, %struct.qib_user_info** %4, align 8
  %40 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @QIB_PORT_ALG_COUNT, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.qib_user_info*, %struct.qib_user_info** %4, align 8
  %46 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %44, %38, %31
  %49 = call i32 @mutex_lock(i32* @qib_mutex)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @qib_compatible_subctxts(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %48
  %55 = load %struct.qib_user_info*, %struct.qib_user_info** %4, align 8
  %56 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %54
  %60 = load %struct.file*, %struct.file** %3, align 8
  %61 = load %struct.qib_user_info*, %struct.qib_user_info** %4, align 8
  %62 = call i32 @find_shared_ctxt(%struct.file* %60, %struct.qib_user_info* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load %struct.file*, %struct.file** %3, align 8
  %67 = call i32 @do_qib_user_sdma_queue_create(%struct.file* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = load %struct.file*, %struct.file** %3, align 8
  %72 = load %struct.file*, %struct.file** %3, align 8
  %73 = call %struct.TYPE_4__* @ctxt_fp(%struct.file* %72)
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @assign_ctxt_affinity(%struct.file* %71, i32 %75)
  br label %77

77:                                               ; preds = %70, %65
  br label %137

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %78, %54, %48
  %80 = load %struct.file*, %struct.file** %3, align 8
  %81 = call i32 @file_inode(%struct.file* %80)
  %82 = call i32 @iminor(i32 %81)
  %83 = load i32, i32* @QIB_USER_MINOR_BASE, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, 1
  %90 = load %struct.file*, %struct.file** %3, align 8
  %91 = load %struct.qib_user_info*, %struct.qib_user_info** %4, align 8
  %92 = call i32 @find_free_ctxt(i32 %89, %struct.file* %90, %struct.qib_user_info* %91)
  store i32 %92, i32* %5, align 4
  br label %129

93:                                               ; preds = %79
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @cpumask_first(i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %124

103:                                              ; preds = %93
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @qib_cpulist, align 4
  %106 = call i32 @test_bit(i32 %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %124, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @find_hca(i32 %109, i32* %10)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %10, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.file*, %struct.file** %3, align 8
  %118 = load %struct.qib_user_info*, %struct.qib_user_info** %4, align 8
  %119 = call i32 @find_free_ctxt(i32 %116, %struct.file* %117, %struct.qib_user_info* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  br label %130

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122, %112, %108
  br label %124

124:                                              ; preds = %123, %103, %93
  %125 = load %struct.file*, %struct.file** %3, align 8
  %126 = load %struct.qib_user_info*, %struct.qib_user_info** %4, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @get_a_ctxt(%struct.file* %125, %struct.qib_user_info* %126, i32 %127)
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %124, %87
  br label %130

130:                                              ; preds = %129, %121
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load %struct.file*, %struct.file** %3, align 8
  %135 = call i32 @do_qib_user_sdma_queue_create(%struct.file* %134)
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %133, %130
  br label %137

137:                                              ; preds = %136, %77
  %138 = call i32 @mutex_unlock(i32* @qib_mutex)
  br label %139

139:                                              ; preds = %137, %28, %17
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local %struct.TYPE_4__* @ctxt_fp(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @qib_compatible_subctxts(i32, i32) #1

declare dso_local i32 @find_shared_ctxt(%struct.file*, %struct.qib_user_info*) #1

declare dso_local i32 @do_qib_user_sdma_queue_create(%struct.file*) #1

declare dso_local i32 @assign_ctxt_affinity(%struct.file*, i32) #1

declare dso_local i32 @iminor(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @find_free_ctxt(i32, %struct.file*, %struct.qib_user_info*) #1

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @find_hca(i32, i32*) #1

declare dso_local i32 @get_a_ctxt(%struct.file*, %struct.qib_user_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
