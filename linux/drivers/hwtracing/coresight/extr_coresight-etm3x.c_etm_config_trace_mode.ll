; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x.c_etm_config_trace_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x.c_etm_config_trace_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etm_config = type { i32, i32, i32*, i32*, i8**, i32 }

@ETM_MODE_EXCL_KERN = common dso_local global i32 0, align 4
@ETM_MODE_EXCL_USER = common dso_local global i32 0, align 4
@ETMTECR1_ADDR_COMP_1 = common dso_local global i32 0, align 4
@ETM_ADDR_TYPE_RANGE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @etm_config_trace_mode(%struct.etm_config* %0) #0 {
  %2 = alloca %struct.etm_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.etm_config* %0, %struct.etm_config** %2, align 8
  %5 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %6 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @ETM_MODE_EXCL_KERN, align 4
  %9 = load i32, i32* @ETM_MODE_EXCL_USER, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ETM_MODE_EXCL_KERN, align 4
  %15 = load i32, i32* @ETM_MODE_EXCL_USER, align 4
  %16 = or i32 %14, %15
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %77

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @ETM_MODE_EXCL_KERN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ETM_MODE_EXCL_USER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %77

30:                                               ; preds = %24, %19
  store i32 25, i32* %3, align 4
  %31 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %32 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* @ETMTECR1_ADDR_COMP_1, align 4
  %34 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %35 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, 1024
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @ETM_MODE_EXCL_USER, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, 8192
  store i32 %44, i32* %3, align 4
  br label %48

45:                                               ; preds = %30
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, 10240
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %50 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 0, i32* %52, align 4
  %53 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %54 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 -1, i32* %56, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %59 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %64 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %62, i32* %66, align 4
  %67 = load i8*, i8** @ETM_ADDR_TYPE_RANGE, align 8
  %68 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %69 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %68, i32 0, i32 4
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  store i8* %67, i8** %71, align 8
  %72 = load i8*, i8** @ETM_ADDR_TYPE_RANGE, align 8
  %73 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %74 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %73, i32 0, i32 4
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  store i8* %72, i8** %76, align 8
  br label %77

77:                                               ; preds = %48, %29, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
