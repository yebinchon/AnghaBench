; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sorg94.c_g94_sor_war_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sorg94.c_g94_sor_war_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ior = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NVKM_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_ior*)* @g94_sor_war_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g94_sor_war_2(%struct.nvkm_ior* %0) #0 {
  %2 = alloca %struct.nvkm_ior*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvkm_ior* %0, %struct.nvkm_ior** %2, align 8
  %7 = load %struct.nvkm_ior*, %struct.nvkm_ior** %2, align 8
  %8 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %3, align 8
  %14 = load %struct.nvkm_ior*, %struct.nvkm_ior** %2, align 8
  %15 = call i32 @nv50_ior_base(%struct.nvkm_ior* %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.nvkm_ior*, %struct.nvkm_ior** %2, align 8
  %17 = call i32 @g94_sor_war_needed(%struct.nvkm_ior* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %70

20:                                               ; preds = %1
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %22 = call i32 @nvkm_mask(%struct.nvkm_device* %21, i32 59456, i32 -2147483648, i32 -2147483648)
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 6374144, %24
  %26 = call i32 @nvkm_mask(%struct.nvkm_device* %23, i32 %25, i32 50331648, i32 50331648)
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 6406412, %28
  %30 = call i32 @nvkm_mask(%struct.nvkm_device* %27, i32 %29, i32 1, i32 1)
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 6406156, %32
  %34 = call i32 @nvkm_mask(%struct.nvkm_device* %31, i32 %33, i32 251658240, i32 0)
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 6406152, %36
  %38 = call i32 @nvkm_mask(%struct.nvkm_device* %35, i32 %37, i32 -16777216, i32 335544320)
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %40 = load i32, i32* @NVKM_DELAY, align 4
  %41 = call i32 @nvkm_usec(%struct.nvkm_device* %39, i32 400, i32 %40)
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 6406152, %43
  %45 = call i32 @nvkm_mask(%struct.nvkm_device* %42, i32 %44, i32 -16777216, i32 0)
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 6406156, %47
  %49 = call i32 @nvkm_mask(%struct.nvkm_device* %46, i32 %48, i32 251658240, i32 16777216)
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 6406148, %51
  %53 = call i32 @nvkm_rd32(%struct.nvkm_device* %50, i32 %52)
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %20
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 6406192, %58
  %60 = call i32 @nvkm_rd32(%struct.nvkm_device* %57, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, 15
  store i32 %62, i32* %6, align 4
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 6406208, %64
  %66 = load i32, i32* %6, align 4
  %67 = mul nsw i32 %66, 4
  %68 = add nsw i32 %65, %67
  %69 = call i32 @nvkm_wr32(%struct.nvkm_device* %63, i32 %68, i32 520126464)
  br label %70

70:                                               ; preds = %19, %56, %20
  ret void
}

declare dso_local i32 @nv50_ior_base(%struct.nvkm_ior*) #1

declare dso_local i32 @g94_sor_war_needed(%struct.nvkm_ior*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_usec(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
