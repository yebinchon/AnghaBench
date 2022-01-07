; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_smrt_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_smrt_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb86a16_state = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mb86a16_state*, i32)* @smrt_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smrt_info_get(%struct.mb86a16_state* %0, i32 %1) #0 {
  %3 = alloca %struct.mb86a16_state*, align 8
  %4 = alloca i32, align 4
  store %struct.mb86a16_state* %0, %struct.mb86a16_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 37501
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %9 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %11 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %13 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %12, i32 0, i32 2
  store i32 0, i32* %13, align 4
  br label %263

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 30001
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %19 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %21 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %23 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %22, i32 0, i32 2
  store i32 1, i32* %23, align 4
  br label %262

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 26251
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %29 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %31 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %33 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %32, i32 0, i32 2
  store i32 0, i32* %33, align 4
  br label %261

34:                                               ; preds = %24
  %35 = load i32, i32* %4, align 4
  %36 = icmp sge i32 %35, 22501
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %39 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %41 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %43 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %42, i32 0, i32 2
  store i32 1, i32* %43, align 4
  br label %260

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = icmp sge i32 %45, 18751
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %49 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %51 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %53 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %52, i32 0, i32 2
  store i32 0, i32* %53, align 4
  br label %259

54:                                               ; preds = %44
  %55 = load i32, i32* %4, align 4
  %56 = icmp sge i32 %55, 15001
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %59 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  %60 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %61 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %63 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %62, i32 0, i32 2
  store i32 1, i32* %63, align 4
  br label %258

64:                                               ; preds = %54
  %65 = load i32, i32* %4, align 4
  %66 = icmp sge i32 %65, 13126
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %69 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %71 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %73 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %72, i32 0, i32 2
  store i32 0, i32* %73, align 4
  br label %257

74:                                               ; preds = %64
  %75 = load i32, i32* %4, align 4
  %76 = icmp sge i32 %75, 11251
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %79 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %81 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %83 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %82, i32 0, i32 2
  store i32 1, i32* %83, align 4
  br label %256

84:                                               ; preds = %74
  %85 = load i32, i32* %4, align 4
  %86 = icmp sge i32 %85, 9376
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %89 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %88, i32 0, i32 0
  store i32 2, i32* %89, align 4
  %90 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %91 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  %92 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %93 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %92, i32 0, i32 2
  store i32 0, i32* %93, align 4
  br label %255

94:                                               ; preds = %84
  %95 = load i32, i32* %4, align 4
  %96 = icmp sge i32 %95, 7501
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %99 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %98, i32 0, i32 0
  store i32 2, i32* %99, align 4
  %100 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %101 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  %102 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %103 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %102, i32 0, i32 2
  store i32 1, i32* %103, align 4
  br label %254

104:                                              ; preds = %94
  %105 = load i32, i32* %4, align 4
  %106 = icmp sge i32 %105, 6563
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %109 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %108, i32 0, i32 0
  store i32 2, i32* %109, align 4
  %110 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %111 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %113 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %112, i32 0, i32 2
  store i32 0, i32* %113, align 4
  br label %253

114:                                              ; preds = %104
  %115 = load i32, i32* %4, align 4
  %116 = icmp sge i32 %115, 5626
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %119 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %118, i32 0, i32 0
  store i32 2, i32* %119, align 4
  %120 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %121 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  %122 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %123 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %122, i32 0, i32 2
  store i32 1, i32* %123, align 4
  br label %252

124:                                              ; preds = %114
  %125 = load i32, i32* %4, align 4
  %126 = icmp sge i32 %125, 4688
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %129 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %128, i32 0, i32 0
  store i32 3, i32* %129, align 4
  %130 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %131 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  %132 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %133 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %132, i32 0, i32 2
  store i32 0, i32* %133, align 4
  br label %251

134:                                              ; preds = %124
  %135 = load i32, i32* %4, align 4
  %136 = icmp sge i32 %135, 3751
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %139 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %138, i32 0, i32 0
  store i32 3, i32* %139, align 4
  %140 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %141 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %140, i32 0, i32 1
  store i32 0, i32* %141, align 4
  %142 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %143 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %142, i32 0, i32 2
  store i32 1, i32* %143, align 4
  br label %250

144:                                              ; preds = %134
  %145 = load i32, i32* %4, align 4
  %146 = icmp sge i32 %145, 3282
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %149 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %148, i32 0, i32 0
  store i32 3, i32* %149, align 4
  %150 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %151 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %150, i32 0, i32 1
  store i32 1, i32* %151, align 4
  %152 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %153 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %152, i32 0, i32 2
  store i32 0, i32* %153, align 4
  br label %249

154:                                              ; preds = %144
  %155 = load i32, i32* %4, align 4
  %156 = icmp sge i32 %155, 2814
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %159 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %158, i32 0, i32 0
  store i32 3, i32* %159, align 4
  %160 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %161 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %160, i32 0, i32 1
  store i32 1, i32* %161, align 4
  %162 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %163 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %162, i32 0, i32 2
  store i32 1, i32* %163, align 4
  br label %248

164:                                              ; preds = %154
  %165 = load i32, i32* %4, align 4
  %166 = icmp sge i32 %165, 2344
  br i1 %166, label %167, label %174

167:                                              ; preds = %164
  %168 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %169 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %168, i32 0, i32 0
  store i32 4, i32* %169, align 4
  %170 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %171 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %170, i32 0, i32 1
  store i32 0, i32* %171, align 4
  %172 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %173 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %172, i32 0, i32 2
  store i32 0, i32* %173, align 4
  br label %247

174:                                              ; preds = %164
  %175 = load i32, i32* %4, align 4
  %176 = icmp sge i32 %175, 1876
  br i1 %176, label %177, label %184

177:                                              ; preds = %174
  %178 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %179 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %178, i32 0, i32 0
  store i32 4, i32* %179, align 4
  %180 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %181 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %180, i32 0, i32 1
  store i32 0, i32* %181, align 4
  %182 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %183 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %182, i32 0, i32 2
  store i32 1, i32* %183, align 4
  br label %246

184:                                              ; preds = %174
  %185 = load i32, i32* %4, align 4
  %186 = icmp sge i32 %185, 1641
  br i1 %186, label %187, label %194

187:                                              ; preds = %184
  %188 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %189 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %188, i32 0, i32 0
  store i32 4, i32* %189, align 4
  %190 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %191 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %190, i32 0, i32 1
  store i32 1, i32* %191, align 4
  %192 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %193 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %192, i32 0, i32 2
  store i32 0, i32* %193, align 4
  br label %245

194:                                              ; preds = %184
  %195 = load i32, i32* %4, align 4
  %196 = icmp sge i32 %195, 1407
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %199 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %198, i32 0, i32 0
  store i32 4, i32* %199, align 4
  %200 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %201 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %200, i32 0, i32 1
  store i32 1, i32* %201, align 4
  %202 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %203 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %202, i32 0, i32 2
  store i32 1, i32* %203, align 4
  br label %244

204:                                              ; preds = %194
  %205 = load i32, i32* %4, align 4
  %206 = icmp sge i32 %205, 1172
  br i1 %206, label %207, label %214

207:                                              ; preds = %204
  %208 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %209 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %208, i32 0, i32 0
  store i32 5, i32* %209, align 4
  %210 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %211 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %210, i32 0, i32 1
  store i32 0, i32* %211, align 4
  %212 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %213 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %212, i32 0, i32 2
  store i32 0, i32* %213, align 4
  br label %243

214:                                              ; preds = %204
  %215 = load i32, i32* %4, align 4
  %216 = icmp sge i32 %215, 939
  br i1 %216, label %217, label %224

217:                                              ; preds = %214
  %218 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %219 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %218, i32 0, i32 0
  store i32 5, i32* %219, align 4
  %220 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %221 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %220, i32 0, i32 1
  store i32 0, i32* %221, align 4
  %222 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %223 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %222, i32 0, i32 2
  store i32 1, i32* %223, align 4
  br label %242

224:                                              ; preds = %214
  %225 = load i32, i32* %4, align 4
  %226 = icmp sge i32 %225, 821
  br i1 %226, label %227, label %234

227:                                              ; preds = %224
  %228 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %229 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %228, i32 0, i32 0
  store i32 5, i32* %229, align 4
  %230 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %231 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %230, i32 0, i32 1
  store i32 1, i32* %231, align 4
  %232 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %233 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %232, i32 0, i32 2
  store i32 0, i32* %233, align 4
  br label %241

234:                                              ; preds = %224
  %235 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %236 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %235, i32 0, i32 0
  store i32 5, i32* %236, align 4
  %237 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %238 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %237, i32 0, i32 1
  store i32 1, i32* %238, align 4
  %239 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %240 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %239, i32 0, i32 2
  store i32 1, i32* %240, align 4
  br label %241

241:                                              ; preds = %234, %227
  br label %242

242:                                              ; preds = %241, %217
  br label %243

243:                                              ; preds = %242, %207
  br label %244

244:                                              ; preds = %243, %197
  br label %245

245:                                              ; preds = %244, %187
  br label %246

246:                                              ; preds = %245, %177
  br label %247

247:                                              ; preds = %246, %167
  br label %248

248:                                              ; preds = %247, %157
  br label %249

249:                                              ; preds = %248, %147
  br label %250

250:                                              ; preds = %249, %137
  br label %251

251:                                              ; preds = %250, %127
  br label %252

252:                                              ; preds = %251, %117
  br label %253

253:                                              ; preds = %252, %107
  br label %254

254:                                              ; preds = %253, %97
  br label %255

255:                                              ; preds = %254, %87
  br label %256

256:                                              ; preds = %255, %77
  br label %257

257:                                              ; preds = %256, %67
  br label %258

258:                                              ; preds = %257, %57
  br label %259

259:                                              ; preds = %258, %47
  br label %260

260:                                              ; preds = %259, %37
  br label %261

261:                                              ; preds = %260, %27
  br label %262

262:                                              ; preds = %261, %17
  br label %263

263:                                              ; preds = %262, %7
  %264 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %265 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %263
  %269 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %270 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %269, i32 0, i32 3
  store i32 92000, i32* %270, align 4
  br label %274

271:                                              ; preds = %263
  %272 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %273 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %272, i32 0, i32 3
  store i32 61333, i32* %273, align 4
  br label %274

274:                                              ; preds = %271, %268
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
