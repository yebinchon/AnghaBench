; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv17_gr_ctx_regs_find_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv17_gr_ctx_regs_find_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv10_gr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }

@nv17_gr_ctx_regs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"unknown offset nv17_ctx_regs %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv10_gr*, i32)* @nv17_gr_ctx_regs_find_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv17_gr_ctx_regs_find_offset(%struct.nv10_gr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nv10_gr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca i32, align 4
  store %struct.nv10_gr* %0, %struct.nv10_gr** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nv10_gr*, %struct.nv10_gr** %4, align 8
  %9 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.nvkm_subdev* %11, %struct.nvkm_subdev** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %28, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** @nv17_gr_ctx_regs, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load i32*, i32** @nv17_gr_ctx_regs, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %35

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %12

31:                                               ; preds = %12
  %32 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @nvkm_error(%struct.nvkm_subdev* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
