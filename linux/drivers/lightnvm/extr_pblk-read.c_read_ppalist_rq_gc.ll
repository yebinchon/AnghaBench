; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_read_ppalist_rq_gc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_read_ppalist_rq_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.nvm_rq = type { %struct.ppa_addr* }
%struct.ppa_addr = type { i32 }
%struct.pblk_line = type { i32 }

@NVM_MAX_VLBA = common dso_local global i32 0, align 4
@ADDR_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.nvm_rq*, %struct.pblk_line*, i64*, i64*, i32)* @read_ppalist_rq_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ppalist_rq_gc(%struct.pblk* %0, %struct.nvm_rq* %1, %struct.pblk_line* %2, i64* %3, i64* %4, i32 %5) #0 {
  %7 = alloca %struct.pblk*, align 8
  %8 = alloca %struct.nvm_rq*, align 8
  %9 = alloca %struct.pblk_line*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ppa_addr, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ppa_addr, align 4
  store %struct.pblk* %0, %struct.pblk** %7, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %8, align 8
  store %struct.pblk_line* %2, %struct.pblk_line** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* @NVM_MAX_VLBA, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca %struct.ppa_addr, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  store i32 0, i32* %16, align 4
  %23 = load %struct.pblk*, %struct.pblk** %7, align 8
  %24 = load i64*, i64** %10, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @pblk_lookup_l2p_rand(%struct.pblk* %23, %struct.ppa_addr* %22, i64* %24, i32 %25)
  store i32 0, i32* %17, align 4
  br label %27

27:                                               ; preds = %86, %6
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %89

31:                                               ; preds = %27
  %32 = load i64*, i64** %10, align 8
  %33 = load i32, i32* %17, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ADDR_EMPTY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %86

40:                                               ; preds = %31
  %41 = load %struct.pblk*, %struct.pblk** %7, align 8
  %42 = load i64*, i64** %11, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.pblk_line*, %struct.pblk_line** %9, align 8
  %48 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @addr_to_gen_ppa(%struct.pblk* %41, i64 %46, i32 %49)
  %51 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %18, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = bitcast %struct.ppa_addr* %15 to i8*
  %53 = bitcast %struct.ppa_addr* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %22, i64 %55
  %57 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %15, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pblk_ppa_comp(i32 %58, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %40
  %64 = load i64, i64* @ADDR_EMPTY, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 %64, i64* %68, align 8
  %69 = load i64*, i64** %11, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %64, i64* %72, align 8
  br label %86

73:                                               ; preds = %40
  %74 = load %struct.nvm_rq*, %struct.nvm_rq** %8, align 8
  %75 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %74, i32 0, i32 0
  %76 = load %struct.ppa_addr*, %struct.ppa_addr** %75, align 8
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %16, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %76, i64 %79
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %22, i64 %82
  %84 = bitcast %struct.ppa_addr* %80 to i8*
  %85 = bitcast %struct.ppa_addr* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 4, i1 false)
  br label %86

86:                                               ; preds = %73, %63, %39
  %87 = load i32, i32* %17, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %17, align 4
  br label %27

89:                                               ; preds = %27
  %90 = load i32, i32* %16, align 4
  %91 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %91)
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pblk_lookup_l2p_rand(%struct.pblk*, %struct.ppa_addr*, i64*, i32) #2

declare dso_local i32 @addr_to_gen_ppa(%struct.pblk*, i64, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @pblk_ppa_comp(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
