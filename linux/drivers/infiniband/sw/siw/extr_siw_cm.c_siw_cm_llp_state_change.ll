; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_cm_llp_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_cm_llp_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.siw_cep = type { void (%struct.sock*)*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"state: %d\0A\00", align 1
@SIW_CM_WORK_ACCEPT = common dso_local global i32 0, align 4
@SIW_CM_WORK_PEER_CLOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unexpected socket state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @siw_cm_llp_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siw_cm_llp_state_change(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.siw_cep*, align 8
  %4 = alloca void (%struct.sock*)*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 1
  %7 = call i32 @read_lock(i32* %6)
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.siw_cep* @sk_to_cep(%struct.sock* %8)
  store %struct.siw_cep* %9, %struct.siw_cep** %3, align 8
  %10 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %11 = icmp ne %struct.siw_cep* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 1
  %15 = call i32 @read_unlock(i32* %14)
  br label %59

16:                                               ; preds = %1
  %17 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %18 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %17, i32 0, i32 0
  %19 = load void (%struct.sock*)*, void (%struct.sock*)** %18, align 8
  store void (%struct.sock*)* %19, void (%struct.sock*)** %4, align 8
  %20 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %21 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %22 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @siw_dbg_cep(%struct.siw_cep* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %47 [
    i32 128, label %28
    i32 130, label %32
    i32 129, label %32
  ]

28:                                               ; preds = %16
  %29 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %30 = load i32, i32* @SIW_CM_WORK_ACCEPT, align 4
  %31 = call i32 @siw_cm_queue_work(%struct.siw_cep* %29, i32 %30)
  br label %53

32:                                               ; preds = %16, %16
  %33 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %34 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %39 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %45 = load i32, i32* @SIW_CM_WORK_PEER_CLOSE, align 4
  %46 = call i32 @siw_cm_queue_work(%struct.siw_cep* %44, i32 %45)
  br label %53

47:                                               ; preds = %16
  %48 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %49 = load %struct.sock*, %struct.sock** %2, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @siw_dbg_cep(%struct.siw_cep* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %43, %28
  %54 = load %struct.sock*, %struct.sock** %2, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 1
  %56 = call i32 @read_unlock(i32* %55)
  %57 = load void (%struct.sock*)*, void (%struct.sock*)** %4, align 8
  %58 = load %struct.sock*, %struct.sock** %2, align 8
  call void %57(%struct.sock* %58)
  br label %59

59:                                               ; preds = %53, %12
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.siw_cep* @sk_to_cep(%struct.sock*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @siw_dbg_cep(%struct.siw_cep*, i8*, i32) #1

declare dso_local i32 @siw_cm_queue_work(%struct.siw_cep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
