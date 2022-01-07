; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfdom_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfdom_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_perfdom = type { %struct.TYPE_4__*, i64*, %struct.TYPE_3__*, %struct.nvkm_object }
%struct.TYPE_4__ = type { i32 (%struct.nvkm_pm*, %struct.nvkm_perfdom*)*, i32 (%struct.nvkm_pm*, %struct.nvkm_perfdom*, i64)* }
%struct.nvkm_pm = type { i32 }
%struct.TYPE_3__ = type { %struct.nvkm_pm* }
%struct.nvkm_object = type { i32 }
%union.anon = type { %struct.nvif_perfdom_init }
%struct.nvif_perfdom_init = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"perfdom init size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"perfdom init\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_perfdom*, i8*, i32)* @nvkm_perfdom_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_perfdom_init(%struct.nvkm_perfdom* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_perfdom*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.anon*, align 8
  %9 = alloca %struct.nvkm_object*, align 8
  %10 = alloca %struct.nvkm_pm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvkm_perfdom* %0, %struct.nvkm_perfdom** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %union.anon*
  store %union.anon* %14, %union.anon** %8, align 8
  %15 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %15, i32 0, i32 3
  store %struct.nvkm_object* %16, %struct.nvkm_object** %9, align 8
  %17 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.nvkm_pm*, %struct.nvkm_pm** %20, align 8
  store %struct.nvkm_pm* %21, %struct.nvkm_pm** %10, align 8
  %22 = load i32, i32* @ENOSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.nvkm_object*, %struct.nvkm_object** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (%struct.nvkm_object*, i8*, ...) @nvif_ioctl(%struct.nvkm_object* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = load %union.anon*, %union.anon** %8, align 8
  %29 = bitcast %union.anon* %28 to %struct.nvif_perfdom_init*
  %30 = getelementptr inbounds %struct.nvif_perfdom_init, %struct.nvif_perfdom_init* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nvif_unvers(i32 %27, i8** %6, i32* %7, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load %struct.nvkm_object*, %struct.nvkm_object** %9, align 8
  %36 = call i32 (%struct.nvkm_object*, i8*, ...) @nvif_ioctl(%struct.nvkm_object* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %90

39:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %78, %39
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %81

43:                                               ; preds = %40
  %44 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %45 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %43
  %53 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %54 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32 (%struct.nvkm_pm*, %struct.nvkm_perfdom*, i64)*, i32 (%struct.nvkm_pm*, %struct.nvkm_perfdom*, i64)** %56, align 8
  %58 = load %struct.nvkm_pm*, %struct.nvkm_pm** %10, align 8
  %59 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %60 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %61 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = call i32 %57(%struct.nvkm_pm* %58, %struct.nvkm_perfdom* %59, i64 %66)
  %68 = load %struct.nvkm_pm*, %struct.nvkm_pm** %10, align 8
  %69 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %70 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @nvkm_perfsrc_enable(%struct.nvkm_pm* %68, i64 %75)
  br label %77

77:                                               ; preds = %52, %43
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %40

81:                                               ; preds = %40
  %82 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %83 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32 (%struct.nvkm_pm*, %struct.nvkm_perfdom*)*, i32 (%struct.nvkm_pm*, %struct.nvkm_perfdom*)** %85, align 8
  %87 = load %struct.nvkm_pm*, %struct.nvkm_pm** %10, align 8
  %88 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %89 = call i32 %86(%struct.nvkm_pm* %87, %struct.nvkm_perfdom* %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %81, %37
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, ...) #1

declare dso_local i32 @nvif_unvers(i32, i8**, i32*, i32) #1

declare dso_local i32 @nvkm_perfsrc_enable(%struct.nvkm_pm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
