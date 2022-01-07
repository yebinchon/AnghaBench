; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_g84.c_nvkm_gr_vstatus_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_g84.c_nvkm_gr_vstatus_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_gr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }
%struct.nvkm_bitfield = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"PGRAPH_VSTATUS%d: %08x [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_gr*, i32, %struct.nvkm_bitfield*, i32)* @nvkm_gr_vstatus_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_gr_vstatus_print(%struct.nv50_gr* %0, i32 %1, %struct.nvkm_bitfield* %2, i32 %3) #0 {
  %5 = alloca %struct.nv50_gr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_bitfield*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_subdev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  %13 = alloca i32, align 4
  store %struct.nv50_gr* %0, %struct.nv50_gr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_bitfield* %2, %struct.nvkm_bitfield** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.nv50_gr*, %struct.nv50_gr** %5, align 8
  %15 = getelementptr inbounds %struct.nv50_gr, %struct.nv50_gr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.nvkm_subdev* %17, %struct.nvkm_subdev** %9, align 8
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %44, %4
  %20 = load %struct.nvkm_bitfield*, %struct.nvkm_bitfield** %7, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nvkm_bitfield, %struct.nvkm_bitfield* %20, i64 %22
  %24 = getelementptr inbounds %struct.nvkm_bitfield, %struct.nvkm_bitfield* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %27, %19
  %31 = phi i1 [ false, %19 ], [ %29, %27 ]
  br i1 %31, label %32, label %47

32:                                               ; preds = %30
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 7
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %13, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %42, 3
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %19

47:                                               ; preds = %30
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %49 = load %struct.nvkm_bitfield*, %struct.nvkm_bitfield** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @nvkm_snprintbf(i8* %48, i32 64, %struct.nvkm_bitfield* %49, i32 %50)
  %52 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %10, align 4
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %56 = call i32 @nvkm_error(%struct.nvkm_subdev* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i8* %55)
  ret void
}

declare dso_local i32 @nvkm_snprintbf(i8*, i32, %struct.nvkm_bitfield*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
