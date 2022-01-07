; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_register_connector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_register_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8*, i32, %struct.device* }
%struct.device = type { i32 }

@drm_dp_cec_unregister_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_dp_cec_register_connector(%struct.drm_dp_aux* %0, i8* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.drm_dp_aux*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.device* %2, %struct.device** %6, align 8
  %7 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %8 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %13 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %35

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %24 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %28 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store %struct.device* %26, %struct.device** %29, align 8
  %30 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %31 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* @drm_dp_cec_unregister_work, align 4
  %34 = call i32 @INIT_DELAYED_WORK(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %21, %20
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
