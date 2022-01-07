; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-notifier.c_cec_notifier_conn_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-notifier.c_cec_notifier_conn_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_notifier = type { i32, i64, %struct.cec_connector_info, i32 }
%struct.cec_connector_info = type { i32 }
%struct.device = type { i32 }

@CEC_PHYS_ADDR_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cec_notifier* @cec_notifier_conn_register(%struct.device* %0, i8* %1, %struct.cec_connector_info* %2) #0 {
  %4 = alloca %struct.cec_notifier*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cec_connector_info*, align 8
  %8 = alloca %struct.cec_notifier*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.cec_connector_info* %2, %struct.cec_connector_info** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.cec_notifier* @cec_notifier_get_conn(%struct.device* %9, i8* %10)
  store %struct.cec_notifier* %11, %struct.cec_notifier** %8, align 8
  %12 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %13 = icmp ne %struct.cec_notifier* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  store %struct.cec_notifier* %15, %struct.cec_notifier** %4, align 8
  br label %55

16:                                               ; preds = %3
  %17 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %18 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* @CEC_PHYS_ADDR_INVALID, align 4
  %21 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %22 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.cec_connector_info*, %struct.cec_connector_info** %7, align 8
  %24 = icmp ne %struct.cec_connector_info* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %27 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %26, i32 0, i32 2
  %28 = load %struct.cec_connector_info*, %struct.cec_connector_info** %7, align 8
  %29 = bitcast %struct.cec_connector_info* %27 to i8*
  %30 = bitcast %struct.cec_connector_info* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 4 %30, i64 4, i1 false)
  br label %35

31:                                               ; preds = %16
  %32 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %33 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %32, i32 0, i32 2
  %34 = call i32 @memset(%struct.cec_connector_info* %33, i32 0, i32 4)
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %37 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %42 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @cec_phys_addr_invalidate(i64 %43)
  %45 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %46 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.cec_connector_info*, %struct.cec_connector_info** %7, align 8
  %49 = call i32 @cec_s_conn_info(i64 %47, %struct.cec_connector_info* %48)
  br label %50

50:                                               ; preds = %40, %35
  %51 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %52 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  store %struct.cec_notifier* %54, %struct.cec_notifier** %4, align 8
  br label %55

55:                                               ; preds = %50, %14
  %56 = load %struct.cec_notifier*, %struct.cec_notifier** %4, align 8
  ret %struct.cec_notifier* %56
}

declare dso_local %struct.cec_notifier* @cec_notifier_get_conn(%struct.device*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.cec_connector_info*, i32, i32) #1

declare dso_local i32 @cec_phys_addr_invalidate(i64) #1

declare dso_local i32 @cec_s_conn_info(i64, %struct.cec_connector_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
