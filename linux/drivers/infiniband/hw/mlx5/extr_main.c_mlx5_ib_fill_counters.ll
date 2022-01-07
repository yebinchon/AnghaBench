; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_fill_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_fill_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64 }
%struct.mlx5_ib_dev = type { i32 }

@basic_q_cnts = common dso_local global %struct.TYPE_8__* null, align 8
@out_of_seq_cnt = common dso_local global i32 0, align 4
@out_of_seq_q_cnts = common dso_local global %struct.TYPE_8__* null, align 8
@retransmission_q_counters = common dso_local global i32 0, align 4
@retrans_q_cnts = common dso_local global %struct.TYPE_8__* null, align 8
@enhanced_error_q_counters = common dso_local global i32 0, align 4
@extended_err_cnts = common dso_local global %struct.TYPE_8__* null, align 8
@cc_query_allowed = common dso_local global i32 0, align 4
@cong_cnts = common dso_local global %struct.TYPE_8__* null, align 8
@rx_icrc_encapsulated_counter = common dso_local global i32 0, align 4
@ext_ppcnt_cnts = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, i8**, i64*)* @mlx5_ib_fill_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_fill_counters(%struct.mlx5_ib_dev* %0, i8** %1, i64* %2) #0 {
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %35, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @basic_q_cnts, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @basic_q_cnts, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  store i8* %20, i8** %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @basic_q_cnts, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 %30, i64* %34, align 8
  br label %35

35:                                               ; preds = %14
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %9

40:                                               ; preds = %9
  %41 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @out_of_seq_cnt, align 4
  %45 = call i64 @MLX5_CAP_GEN(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %80

47:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %74, %47
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @out_of_seq_q_cnts, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %50)
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %48
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @out_of_seq_q_cnts, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8**, i8*** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %59, i8** %63, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** @out_of_seq_q_cnts, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  store i64 %69, i64* %73, align 8
  br label %74

74:                                               ; preds = %53
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %48

79:                                               ; preds = %48
  br label %80

80:                                               ; preds = %79, %40
  %81 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %82 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @retransmission_q_counters, align 4
  %85 = call i64 @MLX5_CAP_GEN(i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %120

87:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %114, %87
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @retrans_q_cnts, align 8
  %91 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %90)
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %88
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** @retrans_q_cnts, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  store i8* %99, i8** %103, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** @retrans_q_cnts, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  store i64 %109, i64* %113, align 8
  br label %114

114:                                              ; preds = %93
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %88

119:                                              ; preds = %88
  br label %120

120:                                              ; preds = %119, %80
  %121 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %122 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @enhanced_error_q_counters, align 4
  %125 = call i64 @MLX5_CAP_GEN(i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %160

127:                                              ; preds = %120
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %154, %127
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** @extended_err_cnts, align 8
  %131 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %130)
  %132 = icmp slt i32 %129, %131
  br i1 %132, label %133, label %159

133:                                              ; preds = %128
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** @extended_err_cnts, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i8**, i8*** %5, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  store i8* %139, i8** %143, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** @extended_err_cnts, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %6, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  store i64 %149, i64* %153, align 8
  br label %154

154:                                              ; preds = %133
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %128

159:                                              ; preds = %128
  br label %160

160:                                              ; preds = %159, %120
  %161 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %162 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @cc_query_allowed, align 4
  %165 = call i64 @MLX5_CAP_GEN(i32 %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %200

167:                                              ; preds = %160
  store i32 0, i32* %7, align 4
  br label %168

168:                                              ; preds = %194, %167
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cong_cnts, align 8
  %171 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %170)
  %172 = icmp slt i32 %169, %171
  br i1 %172, label %173, label %199

173:                                              ; preds = %168
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cong_cnts, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load i8**, i8*** %5, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  store i8* %179, i8** %183, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cong_cnts, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64*, i64** %6, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  store i64 %189, i64* %193, align 8
  br label %194

194:                                              ; preds = %173
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  br label %168

199:                                              ; preds = %168
  br label %200

200:                                              ; preds = %199, %160
  %201 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %202 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @rx_icrc_encapsulated_counter, align 4
  %205 = call i64 @MLX5_CAP_PCAM_FEATURE(i32 %203, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %240

207:                                              ; preds = %200
  store i32 0, i32* %7, align 4
  br label %208

208:                                              ; preds = %234, %207
  %209 = load i32, i32* %7, align 4
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ext_ppcnt_cnts, align 8
  %211 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %210)
  %212 = icmp slt i32 %209, %211
  br i1 %212, label %213, label %239

213:                                              ; preds = %208
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ext_ppcnt_cnts, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = load i8**, i8*** %5, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8*, i8** %220, i64 %222
  store i8* %219, i8** %223, align 8
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ext_ppcnt_cnts, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i64*, i64** %6, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  store i64 %229, i64* %233, align 8
  br label %234

234:                                              ; preds = %213
  %235 = load i32, i32* %7, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %7, align 4
  %237 = load i32, i32* %8, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %8, align 4
  br label %208

239:                                              ; preds = %208
  br label %240

240:                                              ; preds = %239, %200
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i64 @MLX5_CAP_PCAM_FEATURE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
