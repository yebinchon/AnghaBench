; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_pblk_read_ppalist_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_pblk_read_ppalist_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32 }
%struct.nvm_rq = type { i32, i32*, i32, i8* }
%struct.bio = type { i32 }
%struct.pblk_sec_meta = type { i8* }

@ADDR_EMPTY = common dso_local global i64 0, align 8
@PBLK_EXPOSED_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.nvm_rq*, %struct.bio*, i64, i32*)* @pblk_read_ppalist_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_read_ppalist_rq(%struct.pblk* %0, %struct.nvm_rq* %1, %struct.bio* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.pblk*, align 8
  %7 = alloca %struct.nvm_rq*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pblk_sec_meta*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.pblk* %0, %struct.pblk** %6, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %7, align 8
  store %struct.bio* %2, %struct.bio** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %18 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %17, i32 0, i32 3
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %11, align 8
  br label %20

20:                                               ; preds = %90, %5
  %21 = load %struct.pblk*, %struct.pblk** %6, align 8
  %22 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %23 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %27 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @pblk_lookup_l2p_seq(%struct.pblk* %21, i32* %24, i64 %25, i32 %28, i32* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %20
  br label %107

35:                                               ; preds = %20
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %103, %35
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %106

40:                                               ; preds = %36
  %41 = load %struct.pblk*, %struct.pblk** %6, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call %struct.pblk_sec_meta* @pblk_get_meta(%struct.pblk* %41, i8* %42, i32 %43)
  store %struct.pblk_sec_meta* %44, %struct.pblk_sec_meta** %14, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  store i64 %48, i64* %15, align 8
  %49 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %50 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @pblk_ppa_empty(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %40
  %59 = load i64, i64* @ADDR_EMPTY, align 8
  %60 = call i8* @cpu_to_le64(i64 %59)
  store i8* %60, i8** %16, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = load %struct.pblk_sec_meta*, %struct.pblk_sec_meta** %14, align 8
  %63 = getelementptr inbounds %struct.pblk_sec_meta, %struct.pblk_sec_meta* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  br label %99

64:                                               ; preds = %40
  %65 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %66 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @pblk_addr_in_cache(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %64
  %75 = load %struct.pblk*, %struct.pblk** %6, align 8
  %76 = load %struct.bio*, %struct.bio** %8, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %79 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pblk_read_from_cache(%struct.pblk* %75, %struct.bio* %76, i64 %77, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %13, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %20

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %12, align 4
  br label %107

93:                                               ; preds = %74
  %94 = load i64, i64* %15, align 8
  %95 = call i8* @cpu_to_le64(i64 %94)
  %96 = load %struct.pblk_sec_meta*, %struct.pblk_sec_meta** %14, align 8
  %97 = getelementptr inbounds %struct.pblk_sec_meta, %struct.pblk_sec_meta* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %93, %64
  br label %99

99:                                               ; preds = %98, %58
  %100 = load %struct.bio*, %struct.bio** %8, align 8
  %101 = load i32, i32* @PBLK_EXPOSED_PAGE_SIZE, align 4
  %102 = call i32 @bio_advance(%struct.bio* %100, i32 %101)
  br label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  br label %36

106:                                              ; preds = %36
  br label %107

107:                                              ; preds = %106, %91, %34
  %108 = load %struct.pblk*, %struct.pblk** %6, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i64 @pblk_io_aligned(%struct.pblk* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %114 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* %12, align 4
  ret i32 %116
}

declare dso_local i32 @pblk_lookup_l2p_seq(%struct.pblk*, i32*, i64, i32, i32*) #1

declare dso_local %struct.pblk_sec_meta* @pblk_get_meta(%struct.pblk*, i8*, i32) #1

declare dso_local i64 @pblk_ppa_empty(i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @pblk_addr_in_cache(i32) #1

declare dso_local i32 @pblk_read_from_cache(%struct.pblk*, %struct.bio*, i64, i32) #1

declare dso_local i32 @bio_advance(%struct.bio*, i32) #1

declare dso_local i64 @pblk_io_aligned(%struct.pblk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
