; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-timings.c_ide_timing_compute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-timings.c_ide_timing_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }
%struct.ide_timing = type { i32, i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ATA_ID_FIELD_VALID = common dso_local global i64 0, align 8
@XFER_PIO_0 = common dso_local global i64 0, align 8
@XFER_SW_DMA_0 = common dso_local global i64 0, align 8
@XFER_PIO_2 = common dso_local global i64 0, align 8
@ATA_ID_EIDE_PIO = common dso_local global i64 0, align 8
@XFER_PIO_4 = common dso_local global i64 0, align 8
@XFER_PIO_5 = common dso_local global i64 0, align 8
@ATA_ID_EIDE_PIO_IORDY = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_2 = common dso_local global i64 0, align 8
@ATA_ID_EIDE_DMA_MIN = common dso_local global i64 0, align 8
@IDE_TIMING_CYCLE = common dso_local global i32 0, align 4
@IDE_TIMING_CYC8B = common dso_local global i32 0, align 4
@IDE_TIMING_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_timing_compute(%struct.TYPE_3__* %0, i64 %1, %struct.ide_timing* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ide_timing*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ide_timing*, align 8
  %14 = alloca %struct.ide_timing, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.ide_timing* %2, %struct.ide_timing** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call %struct.ide_timing* @ide_timing_find_mode(i64 %18)
  store %struct.ide_timing* %19, %struct.ide_timing** %13, align 8
  %20 = load %struct.ide_timing*, %struct.ide_timing** %13, align 8
  %21 = icmp eq %struct.ide_timing* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %203

25:                                               ; preds = %5
  %26 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %27 = load %struct.ide_timing*, %struct.ide_timing** %13, align 8
  %28 = bitcast %struct.ide_timing* %26 to i8*
  %29 = bitcast %struct.ide_timing* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 40, i1 false)
  %30 = load i32*, i32** %12, align 8
  %31 = load i64, i64* @ATA_ID_FIELD_VALID, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %99

36:                                               ; preds = %25
  %37 = call i32 @memset(%struct.ide_timing* %14, i32 0, i32 40)
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @XFER_PIO_0, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %36
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @XFER_SW_DMA_0, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %41
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @XFER_PIO_2, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32*, i32** %12, align 8
  %51 = load i64, i64* @ATA_ID_EIDE_PIO, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %14, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %14, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %76

56:                                               ; preds = %45
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @XFER_PIO_4, align 8
  %59 = icmp sle i64 %57, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @XFER_PIO_5, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @ata_id_is_cfa(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %64, %56
  %69 = load i32*, i32** %12, align 8
  %70 = load i64, i64* @ATA_ID_EIDE_PIO_IORDY, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %14, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %14, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %68, %64, %60
  br label %76

76:                                               ; preds = %75, %49
  br label %92

77:                                               ; preds = %41, %36
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @XFER_MW_DMA_0, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @XFER_MW_DMA_2, align 8
  %84 = icmp sle i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32*, i32** %12, align 8
  %87 = load i64, i64* @ATA_ID_EIDE_DMA_MIN, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %14, i32 0, i32 0
  store i32 %89, i32* %90, align 8
  br label %91

91:                                               ; preds = %85, %81, %77
  br label %92

92:                                               ; preds = %91, %76
  %93 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %94 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %95 = load i32, i32* @IDE_TIMING_CYCLE, align 4
  %96 = load i32, i32* @IDE_TIMING_CYC8B, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @ide_timing_merge(%struct.ide_timing* %14, %struct.ide_timing* %93, %struct.ide_timing* %94, i32 %97)
  br label %99

99:                                               ; preds = %92, %25
  %100 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %101 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @ide_timing_quantize(%struct.ide_timing* %100, %struct.ide_timing* %101, i32 %102, i32 %103)
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* @XFER_SW_DMA_0, align 8
  %107 = icmp sge i64 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %99
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @ide_timing_compute(%struct.TYPE_3__* %109, i64 %112, %struct.ide_timing* %14, i32 %113, i32 %114)
  %116 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %117 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %118 = load i32, i32* @IDE_TIMING_ALL, align 4
  %119 = call i32 @ide_timing_merge(%struct.ide_timing* %14, %struct.ide_timing* %116, %struct.ide_timing* %117, i32 %118)
  br label %120

120:                                              ; preds = %108, %99
  %121 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %122 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %125 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %129 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = icmp slt i64 %127, %131
  br i1 %132, label %133, label %161

133:                                              ; preds = %120
  %134 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %135 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %139 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %142 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %140, %143
  %145 = sub nsw i64 %137, %144
  %146 = sdiv i64 %145, 2
  %147 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %148 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, %146
  store i64 %150, i64* %148, align 8
  %151 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %152 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %156 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %154, %157
  %159 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %160 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %159, i32 0, i32 3
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %133, %120
  %162 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %163 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %166 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %164, %167
  %169 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %170 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = icmp slt i64 %168, %172
  br i1 %173, label %174, label %202

174:                                              ; preds = %161
  %175 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %176 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %180 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %183 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %181, %184
  %186 = sub nsw i64 %178, %185
  %187 = sdiv i64 %186, 2
  %188 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %189 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %190, %187
  store i64 %191, i64* %189, align 8
  %192 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %193 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %197 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = sub nsw i64 %195, %198
  %200 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %201 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %200, i32 0, i32 5
  store i64 %199, i64* %201, align 8
  br label %202

202:                                              ; preds = %174, %161
  store i32 0, i32* %6, align 4
  br label %203

203:                                              ; preds = %202, %22
  %204 = load i32, i32* %6, align 4
  ret i32 %204
}

declare dso_local %struct.ide_timing* @ide_timing_find_mode(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.ide_timing*, i32, i32) #1

declare dso_local i32 @ata_id_is_cfa(i32*) #1

declare dso_local i32 @ide_timing_merge(%struct.ide_timing*, %struct.ide_timing*, %struct.ide_timing*, i32) #1

declare dso_local i32 @ide_timing_quantize(%struct.ide_timing*, %struct.ide_timing*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
