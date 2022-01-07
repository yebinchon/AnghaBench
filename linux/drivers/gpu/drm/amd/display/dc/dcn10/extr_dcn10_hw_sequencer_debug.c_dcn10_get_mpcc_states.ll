; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer_debug.c_dcn10_get_mpcc_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer_debug.c_dcn10_get_mpcc_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.resource_pool* }
%struct.resource_pool = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32, %struct.mpcc_state*)* }
%struct.mpcc_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [68 x i8] c"instance,opp,dpp,mpccbot,mode,alpha_mode,premult,overlap_only,idle\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%x,%x,%x,%x,%x,%x,%x,%x,%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc*, i8*, i32)* @dcn10_get_mpcc_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcn10_get_mpcc_states(%struct.dc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource_pool*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mpcc_state, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.dc*, %struct.dc** %4, align 8
  %13 = getelementptr inbounds %struct.dc, %struct.dc* %12, i32 0, i32 0
  %14 = load %struct.resource_pool*, %struct.resource_pool** %13, align 8
  store %struct.resource_pool* %14, %struct.resource_pool** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 (i8*, i32, i8*, ...) @snprintf_count(i8* %16, i32 %17, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = sub i32 %20, %19
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = zext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %5, align 8
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %78, %3
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.resource_pool*, %struct.resource_pool** %7, align 8
  %29 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %81

32:                                               ; preds = %26
  %33 = bitcast %struct.mpcc_state* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 36, i1 false)
  %34 = load %struct.resource_pool*, %struct.resource_pool** %7, align 8
  %35 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_4__*, i32, %struct.mpcc_state*)*, i32 (%struct.TYPE_4__*, i32, %struct.mpcc_state*)** %39, align 8
  %41 = load %struct.resource_pool*, %struct.resource_pool** %7, align 8
  %42 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 %40(%struct.TYPE_4__* %43, i32 %44, %struct.mpcc_state* %11)
  %46 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %11, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 15
  br i1 %48, label %49, label %77

49:                                               ; preds = %32
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %11, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %11, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %11, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %11, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %11, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %11, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %11, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %11, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i32, i8*, ...) @snprintf_count(i8* %50, i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %54, i32 %56, i32 %58, i32 %60, i32 %62, i32 %64, i32 %66, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sub i32 %71, %70
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i8*, i8** %5, align 8
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %5, align 8
  br label %77

77:                                               ; preds = %49, %32
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %26

81:                                               ; preds = %26
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sub i32 %82, %83
  ret i32 %84
}

declare dso_local i32 @snprintf_count(i8*, i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
