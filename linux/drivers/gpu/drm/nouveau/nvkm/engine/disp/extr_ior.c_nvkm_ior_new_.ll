; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_ior.c_nvkm_ior_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_ior.c_nvkm_ior_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ior_func = type { i32 }
%struct.nvkm_disp = type { i32 }
%struct.nvkm_ior = type { i32, i32, i32, i32, %struct.nvkm_disp*, %struct.nvkm_ior_func* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@nvkm_ior_name = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"ctor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_ior_new_(%struct.nvkm_ior_func* %0, %struct.nvkm_disp* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_ior_func*, align 8
  %7 = alloca %struct.nvkm_disp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_ior*, align 8
  store %struct.nvkm_ior_func* %0, %struct.nvkm_ior_func** %6, align 8
  store %struct.nvkm_disp* %1, %struct.nvkm_disp** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nvkm_ior* @kzalloc(i32 32, i32 %11)
  store %struct.nvkm_ior* %12, %struct.nvkm_ior** %10, align 8
  %13 = icmp ne %struct.nvkm_ior* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %51

17:                                               ; preds = %4
  %18 = load %struct.nvkm_ior_func*, %struct.nvkm_ior_func** %6, align 8
  %19 = load %struct.nvkm_ior*, %struct.nvkm_ior** %10, align 8
  %20 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %19, i32 0, i32 5
  store %struct.nvkm_ior_func* %18, %struct.nvkm_ior_func** %20, align 8
  %21 = load %struct.nvkm_disp*, %struct.nvkm_disp** %7, align 8
  %22 = load %struct.nvkm_ior*, %struct.nvkm_ior** %10, align 8
  %23 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %22, i32 0, i32 4
  store %struct.nvkm_disp* %21, %struct.nvkm_disp** %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.nvkm_ior*, %struct.nvkm_ior** %10, align 8
  %26 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.nvkm_ior*, %struct.nvkm_ior** %10, align 8
  %29 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.nvkm_ior*, %struct.nvkm_ior** %10, align 8
  %31 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i8**, i8*** @nvkm_ior_name, align 8
  %34 = load %struct.nvkm_ior*, %struct.nvkm_ior** %10, align 8
  %35 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %33, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.nvkm_ior*, %struct.nvkm_ior** %10, align 8
  %41 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snprintf(i32 %32, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %42)
  %44 = load %struct.nvkm_ior*, %struct.nvkm_ior** %10, align 8
  %45 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %44, i32 0, i32 2
  %46 = load %struct.nvkm_disp*, %struct.nvkm_disp** %7, align 8
  %47 = getelementptr inbounds %struct.nvkm_disp, %struct.nvkm_disp* %46, i32 0, i32 0
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  %49 = load %struct.nvkm_ior*, %struct.nvkm_ior** %10, align 8
  %50 = call i32 @IOR_DBG(%struct.nvkm_ior* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %17, %14
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.nvkm_ior* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @IOR_DBG(%struct.nvkm_ior*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
