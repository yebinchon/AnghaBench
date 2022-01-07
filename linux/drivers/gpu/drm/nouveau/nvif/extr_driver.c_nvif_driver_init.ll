; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_driver.c_nvif_driver_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_driver.c_nvif_driver_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i8*, i32, i8*, i8*, i32*)*, i32 (i32)*, i32 }
%struct.nvif_client = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@nvif_driver = common dso_local global %struct.TYPE_4__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvif_driver_init(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, %struct.nvif_client* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvif_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.nvif_client* %5, %struct.nvif_client** %12, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %67, %6
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @nvif_driver, align 8
  %19 = load i32, i32* %14, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.nvif_client*, %struct.nvif_client** %12, align 8
  %24 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %23, i32 0, i32 1
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %24, align 8
  %25 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %25, label %26, label %70

26:                                               ; preds = %17
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.nvif_client*, %struct.nvif_client** %12, align 8
  %31 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @strcmp(i32 %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %66, label %38

38:                                               ; preds = %29, %26
  %39 = load %struct.nvif_client*, %struct.nvif_client** %12, align 8
  %40 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (i8*, i32, i8*, i8*, i32*)*, i32 (i8*, i32, i8*, i8*, i32*)** %42, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.nvif_client*, %struct.nvif_client** %12, align 8
  %49 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 %43(i8* %44, i32 %45, i8* %46, i8* %47, i32* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  br label %70

55:                                               ; preds = %38
  %56 = load %struct.nvif_client*, %struct.nvif_client** %12, align 8
  %57 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32 (i32)*, i32 (i32)** %59, align 8
  %61 = load %struct.nvif_client*, %struct.nvif_client** %12, align 8
  %62 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %60(i32 %64)
  br label %66

66:                                               ; preds = %55, %29
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %17

70:                                               ; preds = %54, %17
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load %struct.nvif_client*, %struct.nvif_client** %12, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.nvif_client*, %struct.nvif_client** %12, align 8
  %78 = call i32 @nvif_client_init(%struct.nvif_client* %74, i8* %75, i32 %76, %struct.nvif_client* %77)
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %73, %70
  %80 = load i32, i32* %13, align 4
  ret i32 %80
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @nvif_client_init(%struct.nvif_client*, i8*, i32, %struct.nvif_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
