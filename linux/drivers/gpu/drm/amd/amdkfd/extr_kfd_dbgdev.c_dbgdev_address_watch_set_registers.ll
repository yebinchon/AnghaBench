; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_dbgdev_address_watch_set_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_dbgdev_address_watch_set_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbg_address_watch_info = type { i32*, i32*, i64* }
%union.TCP_WATCH_ADDR_H_BITS = type { i64 }
%union.TCP_WATCH_ADDR_L_BITS = type { i64 }
%union.TCP_WATCH_CNTL_BITS = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i32 }
%union.ULARGE_INTEGER = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ADDRESS_WATCH_REG_CNTL_DEFAULT_MASK = common dso_local global i32 0, align 4
@ADDRESS_WATCH_REG_ADDHIGH_MASK = common dso_local global i32 0, align 4
@ADDRESS_WATCH_REG_ADDLOW_SHIFT = common dso_local global i32 0, align 4
@ADDRESS_WATCH_REG_CNTL_ATC_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"\09\09%20s %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"set reg mask :\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"set reg add high :\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"set reg add low :\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dbg_address_watch_info*, %union.TCP_WATCH_ADDR_H_BITS*, %union.TCP_WATCH_ADDR_L_BITS*, %union.TCP_WATCH_CNTL_BITS*, i32, i32)* @dbgdev_address_watch_set_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbgdev_address_watch_set_registers(%struct.dbg_address_watch_info* %0, %union.TCP_WATCH_ADDR_H_BITS* %1, %union.TCP_WATCH_ADDR_L_BITS* %2, %union.TCP_WATCH_CNTL_BITS* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dbg_address_watch_info*, align 8
  %8 = alloca %union.TCP_WATCH_ADDR_H_BITS*, align 8
  %9 = alloca %union.TCP_WATCH_ADDR_L_BITS*, align 8
  %10 = alloca %union.TCP_WATCH_CNTL_BITS*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.ULARGE_INTEGER, align 8
  store %struct.dbg_address_watch_info* %0, %struct.dbg_address_watch_info** %7, align 8
  store %union.TCP_WATCH_ADDR_H_BITS* %1, %union.TCP_WATCH_ADDR_H_BITS** %8, align 8
  store %union.TCP_WATCH_ADDR_L_BITS* %2, %union.TCP_WATCH_ADDR_L_BITS** %9, align 8
  store %union.TCP_WATCH_CNTL_BITS* %3, %union.TCP_WATCH_CNTL_BITS** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = bitcast %union.ULARGE_INTEGER* %13 to i64*
  store i64 0, i64* %14, align 8
  %15 = load %union.TCP_WATCH_ADDR_H_BITS*, %union.TCP_WATCH_ADDR_H_BITS** %8, align 8
  %16 = bitcast %union.TCP_WATCH_ADDR_H_BITS* %15 to i64*
  store i64 0, i64* %16, align 8
  %17 = load %union.TCP_WATCH_ADDR_L_BITS*, %union.TCP_WATCH_ADDR_L_BITS** %9, align 8
  %18 = bitcast %union.TCP_WATCH_ADDR_L_BITS* %17 to i64*
  store i64 0, i64* %18, align 8
  %19 = load %union.TCP_WATCH_CNTL_BITS*, %union.TCP_WATCH_CNTL_BITS** %10, align 8
  %20 = bitcast %union.TCP_WATCH_CNTL_BITS* %19 to i32*
  store i32 0, i32* %20, align 8
  %21 = load %struct.dbg_address_watch_info*, %struct.dbg_address_watch_info** %7, align 8
  %22 = getelementptr inbounds %struct.dbg_address_watch_info, %struct.dbg_address_watch_info* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %6
  %26 = load %struct.dbg_address_watch_info*, %struct.dbg_address_watch_info** %7, align 8
  %27 = getelementptr inbounds %struct.dbg_address_watch_info, %struct.dbg_address_watch_info* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ADDRESS_WATCH_REG_CNTL_DEFAULT_MASK, align 4
  %34 = and i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = ptrtoint i8* %36 to i32
  %38 = load %union.TCP_WATCH_CNTL_BITS*, %union.TCP_WATCH_CNTL_BITS** %10, align 8
  %39 = bitcast %union.TCP_WATCH_CNTL_BITS* %38 to %struct.TYPE_6__*
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  br label %46

41:                                               ; preds = %6
  %42 = load i32, i32* @ADDRESS_WATCH_REG_CNTL_DEFAULT_MASK, align 4
  %43 = load %union.TCP_WATCH_CNTL_BITS*, %union.TCP_WATCH_CNTL_BITS** %10, align 8
  %44 = bitcast %union.TCP_WATCH_CNTL_BITS* %43 to %struct.TYPE_6__*
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  br label %46

46:                                               ; preds = %41, %25
  %47 = load %struct.dbg_address_watch_info*, %struct.dbg_address_watch_info** %7, align 8
  %48 = getelementptr inbounds %struct.dbg_address_watch_info, %struct.dbg_address_watch_info* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = bitcast %union.ULARGE_INTEGER* %13 to i64*
  store i64 %53, i64* %54, align 8
  %55 = bitcast %union.ULARGE_INTEGER* %13 to %struct.TYPE_5__*
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ADDRESS_WATCH_REG_ADDHIGH_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load %union.TCP_WATCH_ADDR_H_BITS*, %union.TCP_WATCH_ADDR_H_BITS** %8, align 8
  %61 = bitcast %union.TCP_WATCH_ADDR_H_BITS* %60 to %struct.TYPE_7__*
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = bitcast %union.ULARGE_INTEGER* %13 to %struct.TYPE_5__*
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ADDRESS_WATCH_REG_ADDLOW_SHIFT, align 4
  %67 = ashr i32 %65, %66
  %68 = load %union.TCP_WATCH_ADDR_L_BITS*, %union.TCP_WATCH_ADDR_L_BITS** %9, align 8
  %69 = bitcast %union.TCP_WATCH_ADDR_L_BITS* %68 to %struct.TYPE_8__*
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.dbg_address_watch_info*, %struct.dbg_address_watch_info** %7, align 8
  %72 = getelementptr inbounds %struct.dbg_address_watch_info, %struct.dbg_address_watch_info* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %union.TCP_WATCH_CNTL_BITS*, %union.TCP_WATCH_CNTL_BITS** %10, align 8
  %79 = bitcast %union.TCP_WATCH_CNTL_BITS* %78 to %struct.TYPE_6__*
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = load %union.TCP_WATCH_CNTL_BITS*, %union.TCP_WATCH_CNTL_BITS** %10, align 8
  %85 = bitcast %union.TCP_WATCH_CNTL_BITS* %84 to %struct.TYPE_6__*
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i8* %83, i8** %86, align 8
  %87 = load i32, i32* @ADDRESS_WATCH_REG_CNTL_ATC_BIT, align 4
  %88 = load %union.TCP_WATCH_CNTL_BITS*, %union.TCP_WATCH_CNTL_BITS** %10, align 8
  %89 = bitcast %union.TCP_WATCH_CNTL_BITS* %88 to i32*
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %union.TCP_WATCH_CNTL_BITS*, %union.TCP_WATCH_CNTL_BITS** %10, align 8
  %93 = bitcast %union.TCP_WATCH_CNTL_BITS* %92 to %struct.TYPE_6__*
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load %union.TCP_WATCH_ADDR_H_BITS*, %union.TCP_WATCH_ADDR_H_BITS** %8, align 8
  %98 = bitcast %union.TCP_WATCH_ADDR_H_BITS* %97 to %struct.TYPE_7__*
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load %union.TCP_WATCH_ADDR_L_BITS*, %union.TCP_WATCH_ADDR_L_BITS** %9, align 8
  %103 = bitcast %union.TCP_WATCH_ADDR_L_BITS* %102 to %struct.TYPE_8__*
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
