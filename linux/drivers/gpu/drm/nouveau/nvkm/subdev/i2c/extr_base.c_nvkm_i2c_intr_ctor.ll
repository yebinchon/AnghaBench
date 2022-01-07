; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_base.c_nvkm_i2c_intr_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_base.c_nvkm_i2c_intr_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_notify = type { i32, i32, i32 }
%struct.nvkm_i2c_ntfy_req = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i8*, i32, %struct.nvkm_notify*)* @nvkm_i2c_intr_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_i2c_intr_ctor(%struct.nvkm_object* %0, i8* %1, i32 %2, %struct.nvkm_notify* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_notify*, align 8
  %10 = alloca %struct.nvkm_i2c_ntfy_req*, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_notify* %3, %struct.nvkm_notify** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.nvkm_i2c_ntfy_req*
  store %struct.nvkm_i2c_ntfy_req* %12, %struct.nvkm_i2c_ntfy_req** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 8
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %4
  %20 = load %struct.nvkm_notify*, %struct.nvkm_notify** %9, align 8
  %21 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %20, i32 0, i32 0
  store i32 4, i32* %21, align 4
  %22 = load %struct.nvkm_i2c_ntfy_req*, %struct.nvkm_i2c_ntfy_req** %10, align 8
  %23 = getelementptr inbounds %struct.nvkm_i2c_ntfy_req, %struct.nvkm_i2c_ntfy_req* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nvkm_notify*, %struct.nvkm_notify** %9, align 8
  %26 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.nvkm_i2c_ntfy_req*, %struct.nvkm_i2c_ntfy_req** %10, align 8
  %28 = getelementptr inbounds %struct.nvkm_i2c_ntfy_req, %struct.nvkm_i2c_ntfy_req* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nvkm_notify*, %struct.nvkm_notify** %9, align 8
  %31 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %5, align 4
  br label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %19
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
