; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_next_post_div_step.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_next_post_div_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv6xx_sclk_stepping = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.rv6xx_sclk_stepping*, %struct.rv6xx_sclk_stepping*)* @rv6xx_next_post_div_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv6xx_next_post_div_step(%struct.radeon_device* %0, %struct.rv6xx_sclk_stepping* %1, %struct.rv6xx_sclk_stepping* %2) #0 {
  %4 = alloca %struct.rv6xx_sclk_stepping, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.rv6xx_sclk_stepping*, align 8
  %7 = alloca %struct.rv6xx_sclk_stepping*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.rv6xx_sclk_stepping* %1, %struct.rv6xx_sclk_stepping** %6, align 8
  store %struct.rv6xx_sclk_stepping* %2, %struct.rv6xx_sclk_stepping** %7, align 8
  %8 = load %struct.rv6xx_sclk_stepping*, %struct.rv6xx_sclk_stepping** %6, align 8
  %9 = bitcast %struct.rv6xx_sclk_stepping* %4 to i8*
  %10 = bitcast %struct.rv6xx_sclk_stepping* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  br label %11

11:                                               ; preds = %16, %3
  %12 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %13 = load %struct.rv6xx_sclk_stepping*, %struct.rv6xx_sclk_stepping** %7, align 8
  %14 = call i64 @rv6xx_can_step_post_div(%struct.radeon_device* %12, %struct.rv6xx_sclk_stepping* %4, %struct.rv6xx_sclk_stepping* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.rv6xx_sclk_stepping, %struct.rv6xx_sclk_stepping* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  br label %11

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.rv6xx_sclk_stepping, %struct.rv6xx_sclk_stepping* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  ret i32 %22
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @rv6xx_can_step_post_div(%struct.radeon_device*, %struct.rv6xx_sclk_stepping*, %struct.rv6xx_sclk_stepping*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
