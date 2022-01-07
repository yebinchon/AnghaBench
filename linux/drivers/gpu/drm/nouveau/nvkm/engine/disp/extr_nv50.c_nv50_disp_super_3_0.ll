; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv50.c_nv50_disp_super_3_0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv50.c_nv50_disp_super_3_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp = type { i32 }
%struct.nvkm_head = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nvkm_ior = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.nvkm_ior*)* }

@.str = private unnamed_addr constant [15 x i8] c"supervisor 3.0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_disp_super_3_0(%struct.nv50_disp* %0, %struct.nvkm_head* %1) #0 {
  %3 = alloca %struct.nv50_disp*, align 8
  %4 = alloca %struct.nvkm_head*, align 8
  %5 = alloca %struct.nvkm_ior*, align 8
  store %struct.nv50_disp* %0, %struct.nv50_disp** %3, align 8
  store %struct.nvkm_head* %1, %struct.nvkm_head** %4, align 8
  %6 = load %struct.nvkm_head*, %struct.nvkm_head** %4, align 8
  %7 = call i32 @HEAD_DBG(%struct.nvkm_head* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.nvkm_head*, %struct.nvkm_head** %4, align 8
  %9 = call %struct.nvkm_ior* @nv50_disp_super_ior_asy(%struct.nvkm_head* %8)
  store %struct.nvkm_ior* %9, %struct.nvkm_ior** %5, align 8
  %10 = load %struct.nvkm_ior*, %struct.nvkm_ior** %5, align 8
  %11 = icmp ne %struct.nvkm_ior* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.nvkm_head*, %struct.nvkm_head** %4, align 8
  %15 = load %struct.nvkm_ior*, %struct.nvkm_ior** %5, align 8
  %16 = load %struct.nvkm_head*, %struct.nvkm_head** %4, align 8
  %17 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 1000
  %21 = call i32 @nv50_disp_super_ied_on(%struct.nvkm_head* %14, %struct.nvkm_ior* %15, i32 1, i32 %20)
  %22 = load %struct.nvkm_ior*, %struct.nvkm_ior** %5, align 8
  %23 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.nvkm_ior*)*, i32 (%struct.nvkm_ior*)** %25, align 8
  %27 = icmp ne i32 (%struct.nvkm_ior*)* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %13
  %29 = load %struct.nvkm_ior*, %struct.nvkm_ior** %5, align 8
  %30 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.nvkm_ior*)*, i32 (%struct.nvkm_ior*)** %32, align 8
  %34 = load %struct.nvkm_ior*, %struct.nvkm_ior** %5, align 8
  %35 = call i32 %33(%struct.nvkm_ior* %34)
  br label %36

36:                                               ; preds = %12, %28, %13
  ret void
}

declare dso_local i32 @HEAD_DBG(%struct.nvkm_head*, i8*) #1

declare dso_local %struct.nvkm_ior* @nv50_disp_super_ior_asy(%struct.nvkm_head*) #1

declare dso_local i32 @nv50_disp_super_ied_on(%struct.nvkm_head*, %struct.nvkm_ior*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
