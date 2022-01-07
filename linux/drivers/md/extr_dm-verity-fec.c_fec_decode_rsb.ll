; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_fec_decode_rsb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_fec_decode_rsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dm_verity_io = type { i32 }
%struct.dm_verity_fec_io = type { i32, i32 }

@DM_VERITY_FEC_BUF_RS_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: FEC %llu: failed to correct (%d erasures)\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_verity*, %struct.dm_verity_io*, %struct.dm_verity_fec_io*, i64, i64, i32)* @fec_decode_rsb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_decode_rsb(%struct.dm_verity* %0, %struct.dm_verity_io* %1, %struct.dm_verity_fec_io* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_verity*, align 8
  %9 = alloca %struct.dm_verity_io*, align 8
  %10 = alloca %struct.dm_verity_fec_io*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dm_verity* %0, %struct.dm_verity** %8, align 8
  store %struct.dm_verity_io* %1, %struct.dm_verity_io** %9, align 8
  store %struct.dm_verity_fec_io* %2, %struct.dm_verity_fec_io** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %18 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %10, align 8
  %19 = call i32 @fec_alloc_bufs(%struct.dm_verity* %17, %struct.dm_verity_fec_io* %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp slt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %7, align 4
  br label %125

27:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  br label %28

28:                                               ; preds = %70, %27
  %29 = load i32, i32* %16, align 4
  %30 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %31 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 1, %32
  %34 = icmp ult i32 %29, %33
  br i1 %34, label %35, label %78

35:                                               ; preds = %28
  %36 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %37 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %10, align 8
  %38 = call i32 @fec_init_bufs(%struct.dm_verity* %36, %struct.dm_verity_fec_io* %37)
  %39 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %40 = load %struct.dm_verity_io*, %struct.dm_verity_io** %9, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %48

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %46
  %49 = phi i32* [ %15, %46 ], [ null, %47 ]
  %50 = call i32 @fec_read_bufs(%struct.dm_verity* %39, %struct.dm_verity_io* %40, i64 %41, i64 %42, i32 %43, i32* %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %7, align 4
  br label %125

58:                                               ; preds = %48
  %59 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %60 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @fec_decode_bufs(%struct.dm_verity* %59, %struct.dm_verity_fec_io* %60, i64 %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %7, align 4
  br label %125

70:                                               ; preds = %58
  %71 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %10, align 8
  %72 = getelementptr inbounds %struct.dm_verity_fec_io, %struct.dm_verity_fec_io* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DM_VERITY_FEC_BUF_RS_BITS, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %16, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %16, align 4
  br label %28

78:                                               ; preds = %28
  %79 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %80 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %81 = load %struct.dm_verity_io*, %struct.dm_verity_io** %9, align 8
  %82 = call i32 @verity_io_hash_req(%struct.dm_verity* %80, %struct.dm_verity_io* %81)
  %83 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %10, align 8
  %84 = getelementptr inbounds %struct.dm_verity_fec_io, %struct.dm_verity_fec_io* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %87 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 1, %88
  %90 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %91 = load %struct.dm_verity_io*, %struct.dm_verity_io** %9, align 8
  %92 = call i32 @verity_io_real_digest(%struct.dm_verity* %90, %struct.dm_verity_io* %91)
  %93 = call i32 @verity_hash(%struct.dm_verity* %79, i32 %82, i32 %85, i32 %89, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %78
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %7, align 4
  br label %125

101:                                              ; preds = %78
  %102 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %103 = load %struct.dm_verity_io*, %struct.dm_verity_io** %9, align 8
  %104 = call i32 @verity_io_real_digest(%struct.dm_verity* %102, %struct.dm_verity_io* %103)
  %105 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %106 = load %struct.dm_verity_io*, %struct.dm_verity_io** %9, align 8
  %107 = call i32 @verity_io_want_digest(%struct.dm_verity* %105, %struct.dm_verity_io* %106)
  %108 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %109 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @memcmp(i32 %104, i32 %107, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %101
  %114 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %115 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %11, align 8
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %118, i64 %119, i32 %120)
  %122 = load i32, i32* @EILSEQ, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %7, align 4
  br label %125

124:                                              ; preds = %101
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %124, %113, %99, %68, %56, %25
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i32 @fec_alloc_bufs(%struct.dm_verity*, %struct.dm_verity_fec_io*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fec_init_bufs(%struct.dm_verity*, %struct.dm_verity_fec_io*) #1

declare dso_local i32 @fec_read_bufs(%struct.dm_verity*, %struct.dm_verity_io*, i64, i64, i32, i32*) #1

declare dso_local i32 @fec_decode_bufs(%struct.dm_verity*, %struct.dm_verity_fec_io*, i64, i32, i32, i32) #1

declare dso_local i32 @verity_hash(%struct.dm_verity*, i32, i32, i32, i32) #1

declare dso_local i32 @verity_io_hash_req(%struct.dm_verity*, %struct.dm_verity_io*) #1

declare dso_local i32 @verity_io_real_digest(%struct.dm_verity*, %struct.dm_verity_io*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @verity_io_want_digest(%struct.dm_verity*, %struct.dm_verity_io*) #1

declare dso_local i32 @DMERR_LIMIT(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
