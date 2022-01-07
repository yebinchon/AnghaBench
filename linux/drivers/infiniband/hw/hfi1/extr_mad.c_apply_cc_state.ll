; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_apply_cc_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_apply_cc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, i32, i32, i32, i32, i32 }
%struct.cc_state = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_CC_CCS_PC_SL_BASED = common dso_local global i32 0, align 4
@OPA_MAX_SLS = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_pportdata*)* @apply_cc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_cc_state(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca %struct.hfi1_pportdata*, align 8
  %3 = alloca %struct.cc_state*, align 8
  %4 = alloca %struct.cc_state*, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %2, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.cc_state* @kzalloc(i32 20, i32 %5)
  store %struct.cc_state* %6, %struct.cc_state** %4, align 8
  %7 = load %struct.cc_state*, %struct.cc_state** %4, align 8
  %8 = icmp ne %struct.cc_state* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %93

10:                                               ; preds = %1
  %11 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %12 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %15 = call %struct.cc_state* @get_cc_state_protected(%struct.hfi1_pportdata* %14)
  store %struct.cc_state* %15, %struct.cc_state** %3, align 8
  %16 = load %struct.cc_state*, %struct.cc_state** %3, align 8
  %17 = icmp ne %struct.cc_state* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %10
  %19 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %20 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load %struct.cc_state*, %struct.cc_state** %4, align 8
  %23 = call i32 @kfree(%struct.cc_state* %22)
  br label %93

24:                                               ; preds = %10
  %25 = load %struct.cc_state*, %struct.cc_state** %4, align 8
  %26 = load %struct.cc_state*, %struct.cc_state** %3, align 8
  %27 = bitcast %struct.cc_state* %25 to i8*
  %28 = bitcast %struct.cc_state* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 20, i1 false)
  %29 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %30 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %35 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load %struct.cc_state*, %struct.cc_state** %4, align 8
  %39 = getelementptr inbounds %struct.cc_state, %struct.cc_state* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  br label %45

41:                                               ; preds = %24
  %42 = load %struct.cc_state*, %struct.cc_state** %4, align 8
  %43 = getelementptr inbounds %struct.cc_state, %struct.cc_state* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %33
  %46 = load %struct.cc_state*, %struct.cc_state** %4, align 8
  %47 = getelementptr inbounds %struct.cc_state, %struct.cc_state* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %51 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %54 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memcpy(i32 %49, i32 %52, i32 %58)
  %60 = load i32, i32* @IB_CC_CCS_PC_SL_BASED, align 4
  %61 = load %struct.cc_state*, %struct.cc_state** %4, align 8
  %62 = getelementptr inbounds %struct.cc_state, %struct.cc_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 4
  %64 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %65 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.cc_state*, %struct.cc_state** %4, align 8
  %68 = getelementptr inbounds %struct.cc_state, %struct.cc_state* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.cc_state*, %struct.cc_state** %4, align 8
  %71 = getelementptr inbounds %struct.cc_state, %struct.cc_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %75 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @OPA_MAX_SLS, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memcpy(i32 %73, i32 %76, i32 %80)
  %82 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %83 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.cc_state*, %struct.cc_state** %4, align 8
  %86 = call i32 @rcu_assign_pointer(i32 %84, %struct.cc_state* %85)
  %87 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %88 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %87, i32 0, i32 1
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = load %struct.cc_state*, %struct.cc_state** %3, align 8
  %91 = load i32, i32* @rcu, align 4
  %92 = call i32 @kfree_rcu(%struct.cc_state* %90, i32 %91)
  br label %93

93:                                               ; preds = %45, %18, %9
  ret void
}

declare dso_local %struct.cc_state* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.cc_state* @get_cc_state_protected(%struct.hfi1_pportdata*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.cc_state*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.cc_state*) #1

declare dso_local i32 @kfree_rcu(%struct.cc_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
