; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfdom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfdom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_perfdom = type { i64, %struct.TYPE_6__**, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.nvkm_object }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.nvkm_pm*, %struct.nvkm_perfdom*, %struct.TYPE_6__*)* }
%struct.nvkm_pm = type { i32 }
%struct.TYPE_4__ = type { %struct.nvkm_pm* }
%struct.nvkm_object = type { i32 }
%union.anon = type { %struct.nvif_perfdom_read_v0 }
%struct.nvif_perfdom_read_v0 = type { i64, i32*, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"perfdom read size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"perfdom read vers %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_perfdom*, i8*, i32)* @nvkm_perfdom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_perfdom_read(%struct.nvkm_perfdom* %0, i8* %1, i32 %2) #0 {
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
  %16 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %15, i32 0, i32 4
  store %struct.nvkm_object* %16, %struct.nvkm_object** %9, align 8
  %17 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.nvkm_pm*, %struct.nvkm_pm** %20, align 8
  store %struct.nvkm_pm* %21, %struct.nvkm_pm** %10, align 8
  %22 = load i32, i32* @ENOSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.nvkm_object*, %struct.nvkm_object** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @nvif_ioctl(%struct.nvkm_object* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = load %union.anon*, %union.anon** %8, align 8
  %29 = bitcast %union.anon* %28 to %struct.nvif_perfdom_read_v0*
  %30 = call i32 @nvif_unpack(i32 %27, i8** %6, i32* %7, %struct.nvif_perfdom_read_v0* byval(%struct.nvif_perfdom_read_v0) align 8 %29, i32 0, i32 0, i32 0)
  store i32 %30, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %3
  %33 = load %struct.nvkm_object*, %struct.nvkm_object** %9, align 8
  %34 = load %union.anon*, %union.anon** %8, align 8
  %35 = bitcast %union.anon* %34 to %struct.nvif_perfdom_read_v0*
  %36 = getelementptr inbounds %struct.nvif_perfdom_read_v0, %struct.nvif_perfdom_read_v0* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @nvif_ioctl(%struct.nvkm_object* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %41

39:                                               ; preds = %3
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %123

41:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %71, %41
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %74

45:                                               ; preds = %42
  %46 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %47 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %48, i64 %50
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = icmp ne %struct.TYPE_6__* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %45
  %55 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %56 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32 (%struct.nvkm_pm*, %struct.nvkm_perfdom*, %struct.TYPE_6__*)*, i32 (%struct.nvkm_pm*, %struct.nvkm_perfdom*, %struct.TYPE_6__*)** %58, align 8
  %60 = load %struct.nvkm_pm*, %struct.nvkm_pm** %10, align 8
  %61 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %62 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %63 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %64, i64 %66
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = call i32 %59(%struct.nvkm_pm* %60, %struct.nvkm_perfdom* %61, %struct.TYPE_6__* %68)
  br label %70

70:                                               ; preds = %54, %45
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %42

74:                                               ; preds = %42
  %75 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %76 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @EAGAIN, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %123

82:                                               ; preds = %74
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %113, %82
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %86, label %116

86:                                               ; preds = %83
  %87 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %88 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %89, i64 %91
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = icmp ne %struct.TYPE_6__* %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %86
  %96 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %97 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %98, i64 %100
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %union.anon*, %union.anon** %8, align 8
  %106 = bitcast %union.anon* %105 to %struct.nvif_perfdom_read_v0*
  %107 = getelementptr inbounds %struct.nvif_perfdom_read_v0, %struct.nvif_perfdom_read_v0* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %104, i32* %111, align 4
  br label %112

112:                                              ; preds = %95, %86
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %83

116:                                              ; preds = %83
  %117 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %118 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %union.anon*, %union.anon** %8, align 8
  %121 = bitcast %union.anon* %120 to %struct.nvif_perfdom_read_v0*
  %122 = getelementptr inbounds %struct.nvif_perfdom_read_v0, %struct.nvif_perfdom_read_v0* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %116, %79, %39
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, i32) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, %struct.nvif_perfdom_read_v0* byval(%struct.nvif_perfdom_read_v0) align 8, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
