; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_verity_fec_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_verity_fec_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dm_verity_io = type { i32 }
%struct.bvec_iter = type { i32 }
%struct.dm_verity_fec_io = type { i64, i64, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@DM_VERITY_FEC_MAX_RECURSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s: FEC: recursion too deep\00", align 1
@EIO = common dso_local global i32 0, align 4
@DM_VERITY_BLOCK_TYPE_METADATA = common dso_local global i32 0, align 4
@fec_bv_copy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verity_fec_decode(%struct.dm_verity* %0, %struct.dm_verity_io* %1, i32 %2, i32 %3, i32* %4, %struct.bvec_iter* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_verity*, align 8
  %9 = alloca %struct.dm_verity_io*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.bvec_iter*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dm_verity_fec_io*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dm_verity* %0, %struct.dm_verity** %8, align 8
  store %struct.dm_verity_io* %1, %struct.dm_verity_io** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.bvec_iter* %5, %struct.bvec_iter** %13, align 8
  %19 = load %struct.dm_verity_io*, %struct.dm_verity_io** %9, align 8
  %20 = call %struct.dm_verity_fec_io* @fec_io(%struct.dm_verity_io* %19)
  store %struct.dm_verity_fec_io* %20, %struct.dm_verity_fec_io** %15, align 8
  %21 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %22 = call i32 @verity_fec_is_enabled(%struct.dm_verity* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %139

27:                                               ; preds = %6
  %28 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %15, align 8
  %29 = getelementptr inbounds %struct.dm_verity_fec_io, %struct.dm_verity_fec_io* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DM_VERITY_FEC_MAX_RECURSION, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %35 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DMWARN_LIMIT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %139

42:                                               ; preds = %27
  %43 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %15, align 8
  %44 = getelementptr inbounds %struct.dm_verity_fec_io, %struct.dm_verity_fec_io* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @DM_VERITY_BLOCK_TYPE_METADATA, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %52 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %50, %42
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %61 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %59, %62
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %66 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %71 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 %69, %72
  %74 = call i32 @div64_u64(i32 %64, i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %78 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %83 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = shl i32 %81, %84
  %86 = mul nsw i32 %76, %85
  %87 = sub nsw i32 %75, %86
  store i32 %87, i32* %18, align 4
  %88 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %89 = load %struct.dm_verity_io*, %struct.dm_verity_io** %9, align 8
  %90 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %15, align 8
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @fec_decode_rsb(%struct.dm_verity* %88, %struct.dm_verity_io* %89, %struct.dm_verity_fec_io* %90, i32 %91, i32 %92, i32 0)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %58
  %97 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %98 = load %struct.dm_verity_io*, %struct.dm_verity_io** %9, align 8
  %99 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %15, align 8
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @fec_decode_rsb(%struct.dm_verity* %97, %struct.dm_verity_io* %98, %struct.dm_verity_fec_io* %99, i32 %100, i32 %101, i32 1)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %133

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %58
  %108 = load i32*, i32** %12, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load i32*, i32** %12, align 8
  %112 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %15, align 8
  %113 = getelementptr inbounds %struct.dm_verity_fec_io, %struct.dm_verity_fec_io* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %116 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = shl i32 1, %117
  %119 = call i32 @memcpy(i32* %111, i32 %114, i32 %118)
  br label %132

120:                                              ; preds = %107
  %121 = load %struct.bvec_iter*, %struct.bvec_iter** %13, align 8
  %122 = icmp ne %struct.bvec_iter* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %15, align 8
  %125 = getelementptr inbounds %struct.dm_verity_fec_io, %struct.dm_verity_fec_io* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %127 = load %struct.dm_verity_io*, %struct.dm_verity_io** %9, align 8
  %128 = load %struct.bvec_iter*, %struct.bvec_iter** %13, align 8
  %129 = load i32, i32* @fec_bv_copy, align 4
  %130 = call i32 @verity_for_bv_block(%struct.dm_verity* %126, %struct.dm_verity_io* %127, %struct.bvec_iter* %128, i32 %129)
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %123, %120
  br label %132

132:                                              ; preds = %131, %110
  br label %133

133:                                              ; preds = %132, %105
  %134 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %15, align 8
  %135 = getelementptr inbounds %struct.dm_verity_fec_io, %struct.dm_verity_fec_io* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, -1
  store i64 %137, i64* %135, align 8
  %138 = load i32, i32* %14, align 4
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %133, %33, %24
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local %struct.dm_verity_fec_io* @fec_io(%struct.dm_verity_io*) #1

declare dso_local i32 @verity_fec_is_enabled(%struct.dm_verity*) #1

declare dso_local i32 @DMWARN_LIMIT(i8*, i32) #1

declare dso_local i32 @div64_u64(i32, i32) #1

declare dso_local i32 @fec_decode_rsb(%struct.dm_verity*, %struct.dm_verity_io*, %struct.dm_verity_fec_io*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @verity_for_bv_block(%struct.dm_verity*, %struct.dm_verity_io*, %struct.bvec_iter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
