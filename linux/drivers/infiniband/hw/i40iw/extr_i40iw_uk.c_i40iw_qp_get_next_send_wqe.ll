; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_qp_get_next_send_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_qp_get_next_send_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp_uk = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64* }

@I40IW_QP_WQE_MAX_SIZE = common dso_local global i64 0, align 8
@I40IW_QP_WQE_MIN_SIZE = common dso_local global i64 0, align 8
@I40IW_WQE_SIZE_64 = common dso_local global i64 0, align 8
@I40IWQPSQ_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @i40iw_qp_get_next_send_wqe(%struct.i40iw_qp_uk* %0, i64* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca %struct.i40iw_qp_uk*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  store %struct.i40iw_qp_uk* %0, %struct.i40iw_qp_uk** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64* null, i64** %12, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i64* null, i64** %19, align 8
  %20 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %21 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @I40IW_RING_GETCURRENT_HEAD(i32 %22)
  %24 = load i64*, i64** %8, align 8
  store i64 %23, i64* %24, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %5
  %29 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %30 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %36 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %28, %5
  %38 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %39 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = ptrtoint i64* %45 to i64
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = and i64 %47, 127
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* %9, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i64, i64* @I40IW_QP_WQE_MAX_SIZE, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %98

54:                                               ; preds = %37
  %55 = load i64, i64* @I40IW_QP_WQE_MAX_SIZE, align 8
  %56 = load i64, i64* %15, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load i64, i64* @I40IW_QP_WQE_MIN_SIZE, align 8
  %59 = sdiv i64 %57, %58
  store i64 %59, i64* %17, align 8
  store i64 0, i64* %18, align 8
  br label %60

60:                                               ; preds = %76, %54
  %61 = load i64, i64* %18, align 8
  %62 = load i64, i64* %17, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %66 = call i32 @i40iw_nop_1(%struct.i40iw_qp_uk* %65)
  %67 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %68 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @I40IW_RING_MOVE_HEAD(i32 %69, i32 %70)
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i64* null, i64** %6, align 8
  br label %227

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %18, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %18, align 8
  br label %60

79:                                               ; preds = %60
  %80 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %81 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @I40IW_RING_GETCURRENT_HEAD(i32 %82)
  %84 = load i64*, i64** %8, align 8
  store i64 %83, i64* %84, align 8
  %85 = load i64*, i64** %8, align 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %79
  %89 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %90 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %96 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %88, %79
  br label %98

98:                                               ; preds = %97, %37
  %99 = load i64*, i64** %8, align 8
  %100 = load i64, i64* %99, align 8
  %101 = and i64 %100, 3
  %102 = icmp eq i64 %101, 1
  br i1 %102, label %103, label %137

103:                                              ; preds = %98
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* @I40IW_WQE_SIZE_64, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %137

107:                                              ; preds = %103
  %108 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %109 = call i32 @i40iw_nop_1(%struct.i40iw_qp_uk* %108)
  %110 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %111 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @I40IW_RING_MOVE_HEAD(i32 %112, i32 %113)
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  store i64* null, i64** %6, align 8
  br label %227

118:                                              ; preds = %107
  %119 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %120 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @I40IW_RING_GETCURRENT_HEAD(i32 %121)
  %123 = load i64*, i64** %8, align 8
  store i64 %122, i64* %123, align 8
  %124 = load i64*, i64** %8, align 8
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %118
  %128 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %129 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %135 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %127, %118
  br label %137

137:                                              ; preds = %136, %103, %98
  %138 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %139 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i64, i64* %9, align 8
  %142 = load i64, i64* @I40IW_QP_WQE_MIN_SIZE, align 8
  %143 = sdiv i64 %141, %142
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @I40IW_RING_MOVE_HEAD_BY_COUNT(i32 %140, i64 %143, i32 %144)
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %137
  store i64* null, i64** %6, align 8
  br label %227

149:                                              ; preds = %137
  %150 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %151 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %150, i32 0, i32 2
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = load i64*, i64** %8, align 8
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  store i64* %157, i64** %12, align 8
  %158 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %159 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @I40IW_RING_GETCURRENT_HEAD(i32 %160)
  store i64 %161, i64* %14, align 8
  %162 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %163 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %162, i32 0, i32 2
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = load i64, i64* %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i64*, i64** %167, align 8
  store i64* %168, i64** %19, align 8
  %169 = load i64, i64* %14, align 8
  %170 = and i64 %169, 3
  %171 = icmp eq i64 %170, 1
  br i1 %171, label %176, label %172

172:                                              ; preds = %149
  %173 = load i64, i64* %14, align 8
  %174 = and i64 %173, 3
  %175 = icmp eq i64 %174, 3
  br i1 %175, label %176, label %201

176:                                              ; preds = %172, %149
  %177 = load i64*, i64** %19, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 3
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* @I40IWQPSQ_VALID, align 4
  %181 = call i32 @RS_64(i64 %179, i32 %180)
  %182 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %183 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = icmp ne i32 %181, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %176
  %190 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %191 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = load i32, i32* @I40IWQPSQ_VALID, align 4
  %197 = call i64 @LS_64(i32 %195, i32 %196)
  %198 = load i64*, i64** %19, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 3
  store i64 %197, i64* %199, align 8
  br label %200

200:                                              ; preds = %189, %176
  br label %201

201:                                              ; preds = %200, %172
  %202 = load i64, i64* %11, align 8
  %203 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %204 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %203, i32 0, i32 1
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = load i64*, i64** %8, align 8
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  store i64 %202, i64* %209, align 8
  %210 = load i64, i64* %10, align 8
  %211 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %212 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %211, i32 0, i32 1
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = load i64*, i64** %8, align 8
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 1
  store i64 %210, i64* %217, align 8
  %218 = load i64, i64* %9, align 8
  %219 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %220 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %219, i32 0, i32 1
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = load i64*, i64** %8, align 8
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 2
  store i64 %218, i64* %225, align 8
  %226 = load i64*, i64** %12, align 8
  store i64* %226, i64** %6, align 8
  br label %227

227:                                              ; preds = %201, %148, %117, %74
  %228 = load i64*, i64** %6, align 8
  ret i64* %228
}

declare dso_local i64 @I40IW_RING_GETCURRENT_HEAD(i32) #1

declare dso_local i32 @i40iw_nop_1(%struct.i40iw_qp_uk*) #1

declare dso_local i32 @I40IW_RING_MOVE_HEAD(i32, i32) #1

declare dso_local i32 @I40IW_RING_MOVE_HEAD_BY_COUNT(i32, i64, i32) #1

declare dso_local i32 @RS_64(i64, i32) #1

declare dso_local i64 @LS_64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
