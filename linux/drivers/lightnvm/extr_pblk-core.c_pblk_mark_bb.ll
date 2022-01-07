; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_mark_bb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_mark_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32, %struct.nvm_tgt_dev* }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i64 }
%struct.pblk_line = type { i32, i32, i32 }
%struct.ppa_addr = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"erase failed: line:%d, pos:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"attempted to erase bb: line:%d, pos:%d\0A\00", align 1
@NVM_OCSSD_SPEC_20 = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@pblk_line_mark_bb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, %struct.pblk_line*, i32)* @pblk_mark_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_mark_bb(%struct.pblk* %0, %struct.pblk_line* %1, i32 %2) #0 {
  %4 = alloca %struct.ppa_addr, align 4
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca %struct.pblk_line*, align 8
  %7 = alloca %struct.nvm_tgt_dev*, align 8
  %8 = alloca %struct.nvm_geo*, align 8
  %9 = alloca %struct.ppa_addr*, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %4, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %6, align 8
  %12 = load %struct.pblk*, %struct.pblk** %5, align 8
  %13 = getelementptr inbounds %struct.pblk, %struct.pblk* %12, i32 0, i32 2
  %14 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %13, align 8
  store %struct.nvm_tgt_dev* %14, %struct.nvm_tgt_dev** %7, align 8
  %15 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %7, align 8
  %16 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %15, i32 0, i32 0
  store %struct.nvm_geo* %16, %struct.nvm_geo** %8, align 8
  %17 = load %struct.nvm_geo*, %struct.nvm_geo** %8, align 8
  %18 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %17, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.pblk*, %struct.pblk** %5, align 8
  %22 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %23 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @pblk_debug(%struct.pblk* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.pblk*, %struct.pblk** %5, align 8
  %28 = getelementptr inbounds %struct.pblk, %struct.pblk* %27, i32 0, i32 1
  %29 = call i32 @atomic_long_inc(i32* %28)
  %30 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %31 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %30, i32 0, i32 2
  %32 = call i32 @atomic_dec(i32* %31)
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %35 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @test_and_set_bit(i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %3
  %40 = load %struct.pblk*, %struct.pblk** %5, align 8
  %41 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %42 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @pblk_err(%struct.pblk* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %3
  %47 = load %struct.nvm_geo*, %struct.nvm_geo** %8, align 8
  %48 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NVM_OCSSD_SPEC_20, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %71

53:                                               ; preds = %46
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call %struct.ppa_addr* @kmalloc(i32 4, i32 %54)
  store %struct.ppa_addr* %55, %struct.ppa_addr** %9, align 8
  %56 = load %struct.ppa_addr*, %struct.ppa_addr** %9, align 8
  %57 = icmp ne %struct.ppa_addr* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %71

59:                                               ; preds = %53
  %60 = load %struct.ppa_addr*, %struct.ppa_addr** %9, align 8
  %61 = bitcast %struct.ppa_addr* %60 to i8*
  %62 = bitcast %struct.ppa_addr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  %63 = load %struct.pblk*, %struct.pblk** %5, align 8
  %64 = load %struct.ppa_addr*, %struct.ppa_addr** %9, align 8
  %65 = load i32, i32* @pblk_line_mark_bb, align 4
  %66 = load i32, i32* @GFP_ATOMIC, align 4
  %67 = load %struct.pblk*, %struct.pblk** %5, align 8
  %68 = getelementptr inbounds %struct.pblk, %struct.pblk* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @pblk_gen_run_ws(%struct.pblk* %63, i32* null, %struct.ppa_addr* %64, i32 %65, i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %59, %58, %52
  ret void
}

declare dso_local i32 @pblk_ppa_to_pos(%struct.nvm_geo*, i32) #1

declare dso_local i32 @pblk_debug(%struct.pblk*, i8*, i32, i32) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32, i32) #1

declare dso_local %struct.ppa_addr* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pblk_gen_run_ws(%struct.pblk*, i32*, %struct.ppa_addr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
