; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_vmbus_prep_negotiate_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_vmbus_prep_negotiate_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icmsg_hdr = type { i32 }
%struct.icmsg_negotiate = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.icmsg_hdr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.icmsg_negotiate*, align 8
  store %struct.icmsg_hdr* %0, %struct.icmsg_hdr** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %27, align 4
  %29 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %30 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %29, i32 0, i32 0
  store i32 16, i32* %30, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 8
  %33 = bitcast i32* %32 to %struct.icmsg_negotiate*
  store %struct.icmsg_negotiate* %33, %struct.icmsg_negotiate** %28, align 8
  %34 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %35 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %37 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %38 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %25, align 4
  br label %40

40:                                               ; preds = %111, %8
  %41 = load i32, i32* %25, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %114

44:                                               ; preds = %40
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %25, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 16
  store i32 %50, i32* %21, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %25, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 65535
  store i32 %56, i32* %22, align 4
  store i32 0, i32* %26, align 4
  br label %57

57:                                               ; preds = %103, %44
  %58 = load i32, i32* %26, align 4
  %59 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %60 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %106

63:                                               ; preds = %57
  %64 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %65 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %26, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %21, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %102

74:                                               ; preds = %63
  %75 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %76 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %26, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %22, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %74
  %86 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %87 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %26, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %17, align 4
  %94 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %95 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %26, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %18, align 4
  store i32 1, i32* %27, align 4
  br label %106

102:                                              ; preds = %74, %63
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %26, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %26, align 4
  br label %57

106:                                              ; preds = %85, %57
  %107 = load i32, i32* %27, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %114

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %25, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %25, align 4
  br label %40

114:                                              ; preds = %109, %40
  %115 = load i32, i32* %27, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  br label %201

118:                                              ; preds = %114
  store i32 0, i32* %27, align 4
  store i32 0, i32* %25, align 4
  br label %119

119:                                              ; preds = %197, %118
  %120 = load i32, i32* %25, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %200

123:                                              ; preds = %119
  %124 = load i32*, i32** %13, align 8
  %125 = load i32, i32* %25, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 16
  store i32 %129, i32* %23, align 4
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %25, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 65535
  store i32 %135, i32* %24, align 4
  %136 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %137 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %26, align 4
  br label %139

139:                                              ; preds = %189, %123
  %140 = load i32, i32* %26, align 4
  %141 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %142 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %145 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %143, %146
  %148 = icmp slt i32 %140, %147
  br i1 %148, label %149, label %192

149:                                              ; preds = %139
  %150 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %151 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %150, i32 0, i32 2
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load i32, i32* %26, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %23, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %188

160:                                              ; preds = %149
  %161 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %162 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = load i32, i32* %26, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %24, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %188

171:                                              ; preds = %160
  %172 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %173 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %172, i32 0, i32 2
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load i32, i32* %26, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %19, align 4
  %180 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %181 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %180, i32 0, i32 2
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = load i32, i32* %26, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %20, align 4
  store i32 1, i32* %27, align 4
  br label %192

188:                                              ; preds = %160, %149
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %26, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %26, align 4
  br label %139

192:                                              ; preds = %171, %139
  %193 = load i32, i32* %27, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %200

196:                                              ; preds = %192
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %25, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %25, align 4
  br label %119

200:                                              ; preds = %195, %119
  br label %201

201:                                              ; preds = %200, %117
  %202 = load i32, i32* %27, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %201
  %205 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %206 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %205, i32 0, i32 0
  store i32 0, i32* %206, align 8
  %207 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %208 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %207, i32 0, i32 1
  store i32 0, i32* %208, align 4
  br label %214

209:                                              ; preds = %201
  %210 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %211 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %210, i32 0, i32 0
  store i32 1, i32* %211, align 8
  %212 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %213 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %212, i32 0, i32 1
  store i32 1, i32* %213, align 4
  br label %214

214:                                              ; preds = %209, %204
  %215 = load i32*, i32** %15, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %223

217:                                              ; preds = %214
  %218 = load i32, i32* %17, align 4
  %219 = shl i32 %218, 16
  %220 = load i32, i32* %18, align 4
  %221 = or i32 %219, %220
  %222 = load i32*, i32** %15, align 8
  store i32 %221, i32* %222, align 4
  br label %223

223:                                              ; preds = %217, %214
  %224 = load i32*, i32** %16, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %232

226:                                              ; preds = %223
  %227 = load i32, i32* %19, align 4
  %228 = shl i32 %227, 16
  %229 = load i32, i32* %20, align 4
  %230 = or i32 %228, %229
  %231 = load i32*, i32** %16, align 8
  store i32 %230, i32* %231, align 4
  br label %232

232:                                              ; preds = %226, %223
  %233 = load i32, i32* %17, align 4
  %234 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %235 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %234, i32 0, i32 2
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i64 0
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  store i32 %233, i32* %238, align 4
  %239 = load i32, i32* %18, align 4
  %240 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %241 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %240, i32 0, i32 2
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i64 0
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 1
  store i32 %239, i32* %244, align 4
  %245 = load i32, i32* %19, align 4
  %246 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %247 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %246, i32 0, i32 2
  %248 = load %struct.TYPE_2__*, %struct.TYPE_2__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i64 1
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  store i32 %245, i32* %250, align 4
  %251 = load i32, i32* %20, align 4
  %252 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %28, align 8
  %253 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %252, i32 0, i32 2
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i64 1
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 1
  store i32 %251, i32* %256, align 4
  %257 = load i32, i32* %27, align 4
  ret i32 %257
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
