; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv04.c_nv04_tv_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv04.c_nv04_tv_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.drm_encoder*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @nv04_tv_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_tv_destroy(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %3 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %4 = call %struct.TYPE_2__* @get_slave_funcs(%struct.drm_encoder* %3)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32 (%struct.drm_encoder*)*, i32 (%struct.drm_encoder*)** %5, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %8 = call i32 %6(%struct.drm_encoder* %7)
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %9)
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @kfree(i32 %13)
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %16 = call i32 @nouveau_encoder(%struct.drm_encoder* %15)
  %17 = call i32 @kfree(i32 %16)
  ret void
}

declare dso_local %struct.TYPE_2__* @get_slave_funcs(%struct.drm_encoder*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @nouveau_encoder(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
