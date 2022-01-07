; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_prepare_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_prepare_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_data = type { %struct.TYPE_18__, %struct.TYPE_11__ }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.ccp_op = type { i32, %struct.TYPE_17__, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i8* }

@u64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccp_data*, %struct.ccp_data*, %struct.ccp_op*, i32, i32)* @ccp_prepare_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp_prepare_data(%struct.ccp_data* %0, %struct.ccp_data* %1, %struct.ccp_op* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ccp_data*, align 8
  %7 = alloca %struct.ccp_data*, align 8
  %8 = alloca %struct.ccp_op*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ccp_data* %0, %struct.ccp_data** %6, align 8
  store %struct.ccp_data* %1, %struct.ccp_data** %7, align 8
  store %struct.ccp_op* %2, %struct.ccp_op** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.ccp_data*, %struct.ccp_data** %6, align 8
  %16 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sg_dma_len(i32 %18)
  %20 = load %struct.ccp_data*, %struct.ccp_data** %6, align 8
  %21 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub i32 %19, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @u64, align 4
  %26 = load %struct.ccp_data*, %struct.ccp_data** %6, align 8
  %27 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @min_t(i32 %25, i32 %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.ccp_data*, %struct.ccp_data** %7, align 8
  %33 = icmp ne %struct.ccp_data* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %5
  %35 = load %struct.ccp_data*, %struct.ccp_data** %7, align 8
  %36 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sg_dma_len(i32 %38)
  %40 = load %struct.ccp_data*, %struct.ccp_data** %7, align 8
  %41 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub i32 %39, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* @u64, align 4
  %46 = load %struct.ccp_data*, %struct.ccp_data** %6, align 8
  %47 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @min_t(i32 %45, i32 %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @min(i32 %52, i32 %53)
  store i32 %54, i32* %13, align 4
  br label %57

55:                                               ; preds = %5
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %55, %34
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @max(i32 %58, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %62 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %57
  %67 = load %struct.ccp_data*, %struct.ccp_data** %6, align 8
  %68 = call i32 @ccp_fill_queue_buf(%struct.ccp_data* %67)
  store i32 %68, i32* %14, align 4
  %69 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %70 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.ccp_data*, %struct.ccp_data** %6, align 8
  %72 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %77 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  store i8* %75, i8** %80, align 8
  %81 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %82 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %66
  %89 = load i32, i32* %9, align 4
  br label %92

90:                                               ; preds = %66
  %91 = load i32, i32* %14, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %95 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  store i32 %93, i32* %98, align 4
  br label %138

99:                                               ; preds = %57
  %100 = load %struct.ccp_data*, %struct.ccp_data** %6, align 8
  %101 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @sg_dma_address(i32 %103)
  %105 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %106 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  store i8* %104, i8** %109, align 8
  %110 = load %struct.ccp_data*, %struct.ccp_data** %6, align 8
  %111 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %115 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  store i32 %113, i32* %118, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %9, align 4
  %121 = sub i32 %120, 1
  %122 = xor i32 %121, -1
  %123 = and i32 %119, %122
  %124 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %125 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  store i32 %123, i32* %128, align 4
  %129 = load %struct.ccp_data*, %struct.ccp_data** %6, align 8
  %130 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %129, i32 0, i32 0
  %131 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %132 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ccp_update_sg_workarea(%struct.TYPE_18__* %130, i32 %136)
  br label %138

138:                                              ; preds = %99, %92
  %139 = load %struct.ccp_data*, %struct.ccp_data** %7, align 8
  %140 = icmp ne %struct.ccp_data* %139, null
  br i1 %140, label %141, label %206

141:                                              ; preds = %138
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %145, label %174

145:                                              ; preds = %141
  %146 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %147 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  %148 = load %struct.ccp_data*, %struct.ccp_data** %7, align 8
  %149 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %154 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  store i8* %152, i8** %157, align 8
  %158 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %159 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  %163 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %164 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %170 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  store i32 %168, i32* %173, align 4
  br label %205

174:                                              ; preds = %141
  %175 = load %struct.ccp_data*, %struct.ccp_data** %7, align 8
  %176 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @sg_dma_address(i32 %178)
  %180 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %181 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 2
  store i8* %179, i8** %184, align 8
  %185 = load %struct.ccp_data*, %struct.ccp_data** %7, align 8
  %186 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %190 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  store i32 %188, i32* %193, align 8
  %194 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %195 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ccp_op*, %struct.ccp_op** %8, align 8
  %201 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 1
  store i32 %199, i32* %204, align 4
  br label %205

205:                                              ; preds = %174, %145
  br label %206

206:                                              ; preds = %205, %138
  ret void
}

declare dso_local i32 @sg_dma_len(i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ccp_fill_queue_buf(%struct.ccp_data*) #1

declare dso_local i8* @sg_dma_address(i32) #1

declare dso_local i32 @ccp_update_sg_workarea(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
