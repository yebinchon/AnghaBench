; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_fecs_elpg_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_fecs_elpg_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gf100_gr*)* @gf100_gr_fecs_elpg_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_gr_fecs_elpg_bind(%struct.gf100_gr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gf100_gr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %3, align 8
  %6 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %7 = call i32 @gf100_gr_fecs_discover_reglist_image_size(%struct.gf100_gr* %6, i32* %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %14 = call i32 @gf100_gr_fecs_set_reglist_bind_instance(%struct.gf100_gr* %13, i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %12
  %20 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %21 = call i32 @gf100_gr_fecs_set_reglist_virtual_address(%struct.gf100_gr* %20, i32 0)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %17, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @gf100_gr_fecs_discover_reglist_image_size(%struct.gf100_gr*, i32*) #1

declare dso_local i32 @gf100_gr_fecs_set_reglist_bind_instance(%struct.gf100_gr*, i32) #1

declare dso_local i32 @gf100_gr_fecs_set_reglist_virtual_address(%struct.gf100_gr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
