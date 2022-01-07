; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_main.c_mthca_init_arbel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_main.c_mthca_init_arbel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_profile = type { i32, i32, i64 }
%struct.mthca_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mthca_dev_lim = type { i32, i32 }
%struct.mthca_init_hca_param = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"QUERY_FW command failed %d, aborting.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"No HCA-attached memory (running in MemFree mode)\0A\00", align 1
@MTHCA_FLAG_NO_LAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"ENABLE_LAM returned %d, aborting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Loading FW returned %d, aborting.\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"QUERY_DEV_LIM returned %d, aborting.\0A\00", align 1
@hca_profile = common dso_local global %struct.mthca_profile zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@MTHCA_FLAG_SRQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"INIT_HCA command returned %d, aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*)* @mthca_init_arbel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_init_arbel(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca %struct.mthca_dev_lim, align 4
  %5 = alloca %struct.mthca_profile, align 8
  %6 = alloca %struct.mthca_init_hca_param, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %9 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %10 = call i32 @mthca_QUERY_FW(%struct.mthca_dev* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @mthca_err(%struct.mthca_dev* %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %2, align 4
  br label %127

18:                                               ; preds = %1
  %19 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %20 = call i32 @mthca_ENABLE_LAM(%struct.mthca_dev* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %27 = call i32 @mthca_dbg(%struct.mthca_dev* %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @MTHCA_FLAG_NO_LAM, align 4
  %29 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %42

33:                                               ; preds = %18
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @mthca_err(%struct.mthca_dev* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %2, align 4
  br label %127

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %44 = call i32 @mthca_load_fw(%struct.mthca_dev* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @mthca_err(%struct.mthca_dev* %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  br label %115

51:                                               ; preds = %42
  %52 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %53 = call i32 @mthca_dev_lim(%struct.mthca_dev* %52, %struct.mthca_dev_lim* %4)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @mthca_err(%struct.mthca_dev* %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  br label %105

60:                                               ; preds = %51
  %61 = bitcast %struct.mthca_profile* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 bitcast (%struct.mthca_profile* @hca_profile to i8*), i64 16, i1 false)
  %62 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %4, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = sdiv i32 %63, %64
  %66 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %5, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %5, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %69 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MTHCA_FLAG_SRQ, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %4, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %5, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %60
  %79 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %80 = call i32 @mthca_make_profile(%struct.mthca_dev* %79, %struct.mthca_profile* %5, %struct.mthca_dev_lim* %4, %struct.mthca_init_hca_param* %6)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %8, align 4
  br label %105

85:                                               ; preds = %78
  %86 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @mthca_init_icm(%struct.mthca_dev* %86, %struct.mthca_dev_lim* %4, %struct.mthca_init_hca_param* %6, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %105

92:                                               ; preds = %85
  %93 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %94 = call i32 @mthca_INIT_HCA(%struct.mthca_dev* %93, %struct.mthca_init_hca_param* %6)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @mthca_err(%struct.mthca_dev* %98, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  br label %102

101:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %127

102:                                              ; preds = %97
  %103 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %104 = call i32 @mthca_free_icms(%struct.mthca_dev* %103)
  br label %105

105:                                              ; preds = %102, %91, %83, %56
  %106 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %107 = call i32 @mthca_UNMAP_FA(%struct.mthca_dev* %106)
  %108 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %109 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %110 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @mthca_free_icm(%struct.mthca_dev* %108, i32 %113, i32 0)
  br label %115

115:                                              ; preds = %105, %47
  %116 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %117 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @MTHCA_FLAG_NO_LAM, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %115
  %123 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %124 = call i32 @mthca_DISABLE_LAM(%struct.mthca_dev* %123)
  br label %125

125:                                              ; preds = %122, %115
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %101, %36, %13
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @mthca_QUERY_FW(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_err(%struct.mthca_dev*, i8*, i32) #1

declare dso_local i32 @mthca_ENABLE_LAM(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_dbg(%struct.mthca_dev*, i8*) #1

declare dso_local i32 @mthca_load_fw(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_dev_lim(%struct.mthca_dev*, %struct.mthca_dev_lim*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mthca_make_profile(%struct.mthca_dev*, %struct.mthca_profile*, %struct.mthca_dev_lim*, %struct.mthca_init_hca_param*) #1

declare dso_local i32 @mthca_init_icm(%struct.mthca_dev*, %struct.mthca_dev_lim*, %struct.mthca_init_hca_param*, i32) #1

declare dso_local i32 @mthca_INIT_HCA(%struct.mthca_dev*, %struct.mthca_init_hca_param*) #1

declare dso_local i32 @mthca_free_icms(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_UNMAP_FA(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_free_icm(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @mthca_DISABLE_LAM(%struct.mthca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
