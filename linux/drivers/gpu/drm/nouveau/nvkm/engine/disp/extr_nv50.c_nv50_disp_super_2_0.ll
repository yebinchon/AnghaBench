; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv50.c_nv50_disp_super_2_0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv50.c_nv50_disp_super_2_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp = type { i32 }
%struct.nvkm_head = type { i32 }
%struct.nvkm_outp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.nvkm_outp*, %struct.nvkm_ior*)* }
%struct.nvkm_ior = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.nvkm_outp* }

@.str = private unnamed_addr constant [15 x i8] c"supervisor 2.0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_disp_super_2_0(%struct.nv50_disp* %0, %struct.nvkm_head* %1) #0 {
  %3 = alloca %struct.nv50_disp*, align 8
  %4 = alloca %struct.nvkm_head*, align 8
  %5 = alloca %struct.nvkm_outp*, align 8
  %6 = alloca %struct.nvkm_ior*, align 8
  store %struct.nv50_disp* %0, %struct.nv50_disp** %3, align 8
  store %struct.nvkm_head* %1, %struct.nvkm_head** %4, align 8
  %7 = load %struct.nvkm_head*, %struct.nvkm_head** %4, align 8
  %8 = call i32 @HEAD_DBG(%struct.nvkm_head* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.nvkm_head*, %struct.nvkm_head** %4, align 8
  %10 = call %struct.nvkm_ior* @nv50_disp_super_ior_arm(%struct.nvkm_head* %9)
  store %struct.nvkm_ior* %10, %struct.nvkm_ior** %6, align 8
  %11 = load %struct.nvkm_ior*, %struct.nvkm_ior** %6, align 8
  %12 = icmp ne %struct.nvkm_ior* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.nvkm_head*, %struct.nvkm_head** %4, align 8
  %16 = load %struct.nvkm_ior*, %struct.nvkm_ior** %6, align 8
  %17 = call i32 @nv50_disp_super_ied_off(%struct.nvkm_head* %15, %struct.nvkm_ior* %16, i32 2)
  %18 = load %struct.nvkm_ior*, %struct.nvkm_ior** %6, align 8
  %19 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.nvkm_head*, %struct.nvkm_head** %4, align 8
  %23 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %14
  %28 = load %struct.nvkm_ior*, %struct.nvkm_ior** %6, align 8
  %29 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.nvkm_outp*, %struct.nvkm_outp** %30, align 8
  store %struct.nvkm_outp* %31, %struct.nvkm_outp** %5, align 8
  %32 = icmp ne %struct.nvkm_outp* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load %struct.nvkm_outp*, %struct.nvkm_outp** %5, align 8
  %35 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.nvkm_outp*, %struct.nvkm_ior*)*, i32 (%struct.nvkm_outp*, %struct.nvkm_ior*)** %37, align 8
  %39 = icmp ne i32 (%struct.nvkm_outp*, %struct.nvkm_ior*)* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.nvkm_outp*, %struct.nvkm_outp** %5, align 8
  %42 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (%struct.nvkm_outp*, %struct.nvkm_ior*)*, i32 (%struct.nvkm_outp*, %struct.nvkm_ior*)** %44, align 8
  %46 = load %struct.nvkm_outp*, %struct.nvkm_outp** %5, align 8
  %47 = load %struct.nvkm_ior*, %struct.nvkm_ior** %6, align 8
  %48 = call i32 %45(%struct.nvkm_outp* %46, %struct.nvkm_ior* %47)
  br label %49

49:                                               ; preds = %40, %33, %27
  br label %50

50:                                               ; preds = %13, %49, %14
  ret void
}

declare dso_local i32 @HEAD_DBG(%struct.nvkm_head*, i8*) #1

declare dso_local %struct.nvkm_ior* @nv50_disp_super_ior_arm(%struct.nvkm_head*) #1

declare dso_local i32 @nv50_disp_super_ied_off(%struct.nvkm_head*, %struct.nvkm_ior*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
