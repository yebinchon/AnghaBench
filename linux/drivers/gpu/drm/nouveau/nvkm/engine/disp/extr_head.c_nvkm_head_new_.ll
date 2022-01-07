; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_head.c_nvkm_head_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_head.c_nvkm_head_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_head_func = type { i32 }
%struct.nvkm_disp = type { i32 }
%struct.nvkm_head = type { i32, i32, %struct.nvkm_disp*, %struct.nvkm_head_func* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ctor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_head_new_(%struct.nvkm_head_func* %0, %struct.nvkm_disp* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_head_func*, align 8
  %6 = alloca %struct.nvkm_disp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_head*, align 8
  store %struct.nvkm_head_func* %0, %struct.nvkm_head_func** %5, align 8
  store %struct.nvkm_disp* %1, %struct.nvkm_disp** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nvkm_head* @kzalloc(i32 24, i32 %9)
  store %struct.nvkm_head* %10, %struct.nvkm_head** %8, align 8
  %11 = icmp ne %struct.nvkm_head* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %32

15:                                               ; preds = %3
  %16 = load %struct.nvkm_head_func*, %struct.nvkm_head_func** %5, align 8
  %17 = load %struct.nvkm_head*, %struct.nvkm_head** %8, align 8
  %18 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %17, i32 0, i32 3
  store %struct.nvkm_head_func* %16, %struct.nvkm_head_func** %18, align 8
  %19 = load %struct.nvkm_disp*, %struct.nvkm_disp** %6, align 8
  %20 = load %struct.nvkm_head*, %struct.nvkm_head** %8, align 8
  %21 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %20, i32 0, i32 2
  store %struct.nvkm_disp* %19, %struct.nvkm_disp** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.nvkm_head*, %struct.nvkm_head** %8, align 8
  %24 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.nvkm_head*, %struct.nvkm_head** %8, align 8
  %26 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %25, i32 0, i32 1
  %27 = load %struct.nvkm_disp*, %struct.nvkm_disp** %6, align 8
  %28 = getelementptr inbounds %struct.nvkm_disp, %struct.nvkm_disp* %27, i32 0, i32 0
  %29 = call i32 @list_add_tail(i32* %26, i32* %28)
  %30 = load %struct.nvkm_head*, %struct.nvkm_head** %8, align 8
  %31 = call i32 @HEAD_DBG(%struct.nvkm_head* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %15, %12
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.nvkm_head* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @HEAD_DBG(%struct.nvkm_head*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
