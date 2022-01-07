; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_vblank_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_vblank_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_engine = type { i32 }
%struct.sun4i_backend = type { i32, i32, %struct.sun4i_frontend* }
%struct.sun4i_frontend = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sunxi_engine*)* @sun4i_backend_vblank_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_backend_vblank_quirk(%struct.sunxi_engine* %0) #0 {
  %2 = alloca %struct.sunxi_engine*, align 8
  %3 = alloca %struct.sun4i_backend*, align 8
  %4 = alloca %struct.sun4i_frontend*, align 8
  store %struct.sunxi_engine* %0, %struct.sunxi_engine** %2, align 8
  %5 = load %struct.sunxi_engine*, %struct.sunxi_engine** %2, align 8
  %6 = call %struct.sun4i_backend* @engine_to_sun4i_backend(%struct.sunxi_engine* %5)
  store %struct.sun4i_backend* %6, %struct.sun4i_backend** %3, align 8
  %7 = load %struct.sun4i_backend*, %struct.sun4i_backend** %3, align 8
  %8 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %7, i32 0, i32 2
  %9 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %8, align 8
  store %struct.sun4i_frontend* %9, %struct.sun4i_frontend** %4, align 8
  %10 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %4, align 8
  %11 = icmp ne %struct.sun4i_frontend* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %30

13:                                               ; preds = %1
  %14 = load %struct.sun4i_backend*, %struct.sun4i_backend** %3, align 8
  %15 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.sun4i_backend*, %struct.sun4i_backend** %3, align 8
  %18 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %4, align 8
  %23 = call i32 @sun4i_frontend_exit(%struct.sun4i_frontend* %22)
  %24 = load %struct.sun4i_backend*, %struct.sun4i_backend** %3, align 8
  %25 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %26

26:                                               ; preds = %21, %13
  %27 = load %struct.sun4i_backend*, %struct.sun4i_backend** %3, align 8
  %28 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  br label %30

30:                                               ; preds = %26, %12
  ret void
}

declare dso_local %struct.sun4i_backend* @engine_to_sun4i_backend(%struct.sunxi_engine*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sun4i_frontend_exit(%struct.sun4i_frontend*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
