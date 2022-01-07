; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_outp.c_nvkm_outp_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_outp.c_nvkm_outp_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_outp = type { %struct.nvkm_ior*, %struct.TYPE_3__*, i32 }
%struct.nvkm_ior = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 (%struct.nvkm_outp*)* }

@.str = private unnamed_addr constant [24 x i8] c"release %02x &= %02x %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_outp_release(%struct.nvkm_outp* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_outp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_ior*, align 8
  store %struct.nvkm_outp* %0, %struct.nvkm_outp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nvkm_outp*, %struct.nvkm_outp** %3, align 8
  %7 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %6, i32 0, i32 0
  %8 = load %struct.nvkm_ior*, %struct.nvkm_ior** %7, align 8
  store %struct.nvkm_ior* %8, %struct.nvkm_ior** %5, align 8
  %9 = load %struct.nvkm_outp*, %struct.nvkm_outp** %3, align 8
  %10 = load %struct.nvkm_outp*, %struct.nvkm_outp** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.nvkm_ior*, %struct.nvkm_ior** %5, align 8
  %16 = call i32 @OUTP_TRACE(%struct.nvkm_outp* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14, %struct.nvkm_ior* %15)
  %17 = load %struct.nvkm_ior*, %struct.nvkm_ior** %5, align 8
  %18 = icmp ne %struct.nvkm_ior* %17, null
  br i1 %18, label %19, label %59

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.nvkm_outp*, %struct.nvkm_outp** %3, align 8
  %23 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.nvkm_outp*, %struct.nvkm_outp** %3, align 8
  %27 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %58, label %30

30:                                               ; preds = %19
  %31 = load %struct.nvkm_outp*, %struct.nvkm_outp** %3, align 8
  %32 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.nvkm_outp*)*, i32 (%struct.nvkm_outp*)** %34, align 8
  %36 = icmp ne i32 (%struct.nvkm_outp*)* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = load %struct.nvkm_outp*, %struct.nvkm_outp** %3, align 8
  %39 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %38, i32 0, i32 0
  %40 = load %struct.nvkm_ior*, %struct.nvkm_ior** %39, align 8
  %41 = icmp ne %struct.nvkm_ior* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.nvkm_outp*, %struct.nvkm_outp** %3, align 8
  %44 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (%struct.nvkm_outp*)*, i32 (%struct.nvkm_outp*)** %46, align 8
  %48 = load %struct.nvkm_outp*, %struct.nvkm_outp** %3, align 8
  %49 = call i32 %47(%struct.nvkm_outp* %48)
  br label %50

50:                                               ; preds = %42, %37, %30
  %51 = load %struct.nvkm_outp*, %struct.nvkm_outp** %3, align 8
  %52 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %51, i32 0, i32 0
  %53 = load %struct.nvkm_ior*, %struct.nvkm_ior** %52, align 8
  %54 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load %struct.nvkm_outp*, %struct.nvkm_outp** %3, align 8
  %57 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %56, i32 0, i32 0
  store %struct.nvkm_ior* null, %struct.nvkm_ior** %57, align 8
  br label %58

58:                                               ; preds = %50, %19
  br label %59

59:                                               ; preds = %58, %2
  ret void
}

declare dso_local i32 @OUTP_TRACE(%struct.nvkm_outp*, i8*, i32, i32, %struct.nvkm_ior*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
