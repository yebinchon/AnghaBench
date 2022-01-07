; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfmon_mthd_query_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfmon_mthd_query_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_perfmon = type { %struct.nvkm_pm*, %struct.nvkm_object }
%struct.nvkm_pm = type { i32 }
%struct.nvkm_object = type { i32 }
%union.anon = type { %struct.nvif_perfmon_query_domain_v0 }
%struct.nvif_perfmon_query_domain_v0 = type { i32, i32, i32, i32, i32, i32 }
%struct.nvkm_perfdom = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"perfmon query domain size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"perfmon domain vers %d iter %02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_perfmon*, i8*, i32)* @nvkm_perfmon_mthd_query_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_perfmon_mthd_query_domain(%struct.nvkm_perfmon* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_perfmon*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.anon*, align 8
  %9 = alloca %struct.nvkm_object*, align 8
  %10 = alloca %struct.nvkm_pm*, align 8
  %11 = alloca %struct.nvkm_perfdom*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nvif_perfmon_query_domain_v0, align 8
  store %struct.nvkm_perfmon* %0, %struct.nvkm_perfmon** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %union.anon*
  store %union.anon* %17, %union.anon** %8, align 8
  %18 = load %struct.nvkm_perfmon*, %struct.nvkm_perfmon** %5, align 8
  %19 = getelementptr inbounds %struct.nvkm_perfmon, %struct.nvkm_perfmon* %18, i32 0, i32 1
  store %struct.nvkm_object* %19, %struct.nvkm_object** %9, align 8
  %20 = load %struct.nvkm_perfmon*, %struct.nvkm_perfmon** %5, align 8
  %21 = getelementptr inbounds %struct.nvkm_perfmon, %struct.nvkm_perfmon* %20, i32 0, i32 0
  %22 = load %struct.nvkm_pm*, %struct.nvkm_pm** %21, align 8
  store %struct.nvkm_pm* %22, %struct.nvkm_pm** %10, align 8
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %14, align 4
  %25 = load %struct.nvkm_object*, %struct.nvkm_object** %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %14, align 4
  %29 = load %union.anon*, %union.anon** %8, align 8
  %30 = bitcast %union.anon* %29 to %struct.nvif_perfmon_query_domain_v0*
  %31 = bitcast %struct.nvif_perfmon_query_domain_v0* %15 to i8*
  %32 = bitcast %struct.nvif_perfmon_query_domain_v0* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 4 %32, i64 24, i1 false)
  %33 = call i32 @nvif_unpack(i32 %28, i8** %6, i32* %7, %struct.nvif_perfmon_query_domain_v0* byval(%struct.nvif_perfmon_query_domain_v0) align 8 %15, i32 0, i32 0, i32 0)
  store i32 %33, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %3
  %36 = load %struct.nvkm_object*, %struct.nvkm_object** %9, align 8
  %37 = load %union.anon*, %union.anon** %8, align 8
  %38 = bitcast %union.anon* %37 to %struct.nvif_perfmon_query_domain_v0*
  %39 = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, %struct.nvif_perfmon_query_domain_v0* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %union.anon*, %union.anon** %8, align 8
  %42 = bitcast %union.anon* %41 to %struct.nvif_perfmon_query_domain_v0*
  %43 = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, %struct.nvif_perfmon_query_domain_v0* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %44)
  %46 = load %union.anon*, %union.anon** %8, align 8
  %47 = bitcast %union.anon* %46 to %struct.nvif_perfmon_query_domain_v0*
  %48 = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, %struct.nvif_perfmon_query_domain_v0* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 255
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %54

52:                                               ; preds = %3
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %4, align 4
  br label %111

54:                                               ; preds = %35
  %55 = load %struct.nvkm_pm*, %struct.nvkm_pm** %10, align 8
  %56 = call i32 @nvkm_pm_count_perfdom(%struct.nvkm_pm* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %111

63:                                               ; preds = %54
  %64 = load i32, i32* %13, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %63
  %67 = load %struct.nvkm_pm*, %struct.nvkm_pm** %10, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call %struct.nvkm_perfdom* @nvkm_perfdom_find(%struct.nvkm_pm* %67, i32 %68)
  store %struct.nvkm_perfdom* %69, %struct.nvkm_perfdom** %11, align 8
  %70 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %11, align 8
  %71 = icmp eq %struct.nvkm_perfdom* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %111

75:                                               ; preds = %66
  %76 = load i32, i32* %13, align 4
  %77 = load %union.anon*, %union.anon** %8, align 8
  %78 = bitcast %union.anon* %77 to %struct.nvif_perfmon_query_domain_v0*
  %79 = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, %struct.nvif_perfmon_query_domain_v0* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %11, align 8
  %81 = call i32 @nvkm_perfdom_count_perfsig(%struct.nvkm_perfdom* %80)
  %82 = load %union.anon*, %union.anon** %8, align 8
  %83 = bitcast %union.anon* %82 to %struct.nvif_perfmon_query_domain_v0*
  %84 = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, %struct.nvif_perfmon_query_domain_v0* %83, i32 0, i32 4
  store i32 %81, i32* %84, align 4
  %85 = load %union.anon*, %union.anon** %8, align 8
  %86 = bitcast %union.anon* %85 to %struct.nvif_perfmon_query_domain_v0*
  %87 = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, %struct.nvif_perfmon_query_domain_v0* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %11, align 8
  %90 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @strncpy(i32 %88, i32 %91, i32 3)
  %93 = load %union.anon*, %union.anon** %8, align 8
  %94 = bitcast %union.anon* %93 to %struct.nvif_perfmon_query_domain_v0*
  %95 = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, %struct.nvif_perfmon_query_domain_v0* %94, i32 0, i32 2
  store i32 4, i32* %95, align 4
  br label %96

96:                                               ; preds = %75, %63
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  %104 = load %union.anon*, %union.anon** %8, align 8
  %105 = bitcast %union.anon* %104 to %struct.nvif_perfmon_query_domain_v0*
  %106 = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, %struct.nvif_perfmon_query_domain_v0* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  store i32 0, i32* %4, align 4
  br label %111

107:                                              ; preds = %96
  %108 = load %union.anon*, %union.anon** %8, align 8
  %109 = bitcast %union.anon* %108 to %struct.nvif_perfmon_query_domain_v0*
  %110 = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, %struct.nvif_perfmon_query_domain_v0* %109, i32 0, i32 0
  store i32 255, i32* %110, align 4
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %107, %101, %72, %60, %52
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, i32, ...) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, %struct.nvif_perfmon_query_domain_v0* byval(%struct.nvif_perfmon_query_domain_v0) align 8, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nvkm_pm_count_perfdom(%struct.nvkm_pm*) #1

declare dso_local %struct.nvkm_perfdom* @nvkm_perfdom_find(%struct.nvkm_pm*, i32) #1

declare dso_local i32 @nvkm_perfdom_count_perfsig(%struct.nvkm_perfdom*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
