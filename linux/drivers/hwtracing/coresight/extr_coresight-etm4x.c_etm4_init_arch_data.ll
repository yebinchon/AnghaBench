; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_init_arch_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_init_arch_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etmv4_drvdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@TRCIDR0 = common dso_local global i64 0, align 8
@TRCIDR1 = common dso_local global i64 0, align 8
@TRCIDR2 = common dso_local global i64 0, align 8
@TRCIDR3 = common dso_local global i64 0, align 8
@TRCIDR4 = common dso_local global i64 0, align 8
@TRCIDR5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @etm4_init_arch_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etm4_init_arch_data(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.etmv4_drvdata*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.etmv4_drvdata*
  store %struct.etmv4_drvdata* %11, %struct.etmv4_drvdata** %9, align 8
  %12 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %13 = call i32 @etm4_os_unlock(%struct.etmv4_drvdata* %12)
  %14 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %15 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %14, i32 0, i32 12
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @CS_UNLOCK(i64 %16)
  %18 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %19 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %18, i32 0, i32 12
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TRCIDR0, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl_relaxed(i64 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i8* @BMVAL(i32 %24, i32 1, i32 1)
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i8* @BMVAL(i32 %28, i32 2, i32 2)
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %33 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %37

34:                                               ; preds = %27, %1
  %35 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %36 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %3, align 4
  %39 = call i8* @BMVAL(i32 %38, i32 5, i32 5)
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %43 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  br label %47

44:                                               ; preds = %37
  %45 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %46 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %3, align 4
  %49 = call i8* @BMVAL(i32 %48, i32 6, i32 6)
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %53 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %52, i32 0, i32 2
  store i32 1, i32* %53, align 8
  br label %57

54:                                               ; preds = %47
  %55 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %56 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %55, i32 0, i32 2
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %3, align 4
  %59 = call i8* @BMVAL(i32 %58, i32 7, i32 7)
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %63 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %62, i32 0, i32 3
  store i32 1, i32* %63, align 4
  br label %67

64:                                               ; preds = %57
  %65 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %66 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %65, i32 0, i32 3
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %3, align 4
  %69 = call i8* @BMVAL(i32 %68, i32 9, i32 9)
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %73 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %72, i32 0, i32 4
  store i32 1, i32* %73, align 8
  br label %77

74:                                               ; preds = %67
  %75 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %76 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %75, i32 0, i32 4
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %3, align 4
  %79 = call i8* @BMVAL(i32 %78, i32 10, i32 11)
  %80 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %81 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %80, i32 0, i32 33
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %3, align 4
  %83 = call i8* @BMVAL(i32 %82, i32 15, i32 16)
  %84 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %85 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %84, i32 0, i32 32
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %3, align 4
  %87 = call i8* @BMVAL(i32 %86, i32 24, i32 28)
  %88 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %89 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %88, i32 0, i32 31
  store i8* %87, i8** %89, align 8
  %90 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %91 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %90, i32 0, i32 12
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TRCIDR1, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @readl_relaxed(i64 %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i8* @BMVAL(i32 %96, i32 4, i32 11)
  %98 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %99 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %98, i32 0, i32 30
  store i8* %97, i8** %99, align 8
  %100 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %101 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %100, i32 0, i32 12
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TRCIDR2, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @readl_relaxed(i64 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i8* @BMVAL(i32 %106, i32 5, i32 9)
  %108 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %109 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %108, i32 0, i32 29
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i8* @BMVAL(i32 %110, i32 10, i32 14)
  %112 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %113 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %112, i32 0, i32 28
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i8* @BMVAL(i32 %114, i32 25, i32 28)
  %116 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %117 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %116, i32 0, i32 27
  store i8* %115, i8** %117, align 8
  %118 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %119 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %118, i32 0, i32 12
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TRCIDR3, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @readl_relaxed(i64 %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i8* @BMVAL(i32 %124, i32 0, i32 11)
  %126 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %127 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %126, i32 0, i32 26
  store i8* %125, i8** %127, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i8* @BMVAL(i32 %128, i32 16, i32 19)
  %130 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %131 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %130, i32 0, i32 25
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i8* @BMVAL(i32 %132, i32 20, i32 23)
  %134 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %135 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %134, i32 0, i32 24
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i8* @BMVAL(i32 %136, i32 24, i32 24)
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %77
  %140 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %141 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %140, i32 0, i32 5
  store i32 1, i32* %141, align 4
  br label %145

142:                                              ; preds = %77
  %143 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %144 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %143, i32 0, i32 5
  store i32 0, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i32, i32* %6, align 4
  %147 = call i8* @BMVAL(i32 %146, i32 25, i32 25)
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %151 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %150, i32 0, i32 6
  store i32 1, i32* %151, align 8
  br label %155

152:                                              ; preds = %145
  %153 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %154 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %153, i32 0, i32 6
  store i32 0, i32* %154, align 8
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %6, align 4
  %157 = call i8* @BMVAL(i32 %156, i32 26, i32 26)
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %161 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %160, i32 0, i32 7
  store i32 1, i32* %161, align 4
  br label %165

162:                                              ; preds = %155
  %163 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %164 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %163, i32 0, i32 7
  store i32 0, i32* %164, align 4
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i32, i32* %6, align 4
  %167 = call i8* @BMVAL(i32 %166, i32 27, i32 27)
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %171 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %170, i32 0, i32 8
  store i32 1, i32* %171, align 8
  br label %175

172:                                              ; preds = %165
  %173 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %174 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %173, i32 0, i32 8
  store i32 0, i32* %174, align 8
  br label %175

175:                                              ; preds = %172, %169
  %176 = load i32, i32* %6, align 4
  %177 = call i8* @BMVAL(i32 %176, i32 28, i32 30)
  %178 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %179 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %178, i32 0, i32 23
  store i8* %177, i8** %179, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i8* @BMVAL(i32 %180, i32 31, i32 31)
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %175
  %184 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %185 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %184, i32 0, i32 9
  store i32 1, i32* %185, align 4
  br label %189

186:                                              ; preds = %175
  %187 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %188 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %187, i32 0, i32 9
  store i32 0, i32* %188, align 4
  br label %189

189:                                              ; preds = %186, %183
  %190 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %191 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %190, i32 0, i32 12
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @TRCIDR4, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @readl_relaxed(i64 %194)
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %7, align 4
  %197 = call i8* @BMVAL(i32 %196, i32 0, i32 3)
  %198 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %199 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %198, i32 0, i32 22
  store i8* %197, i8** %199, align 8
  %200 = load i32, i32* %7, align 4
  %201 = call i8* @BMVAL(i32 %200, i32 12, i32 15)
  %202 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %203 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %202, i32 0, i32 21
  store i8* %201, i8** %203, align 8
  %204 = load i32, i32* %7, align 4
  %205 = call i8* @BMVAL(i32 %204, i32 16, i32 19)
  %206 = getelementptr i8, i8* %205, i64 1
  %207 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %208 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %207, i32 0, i32 20
  store i8* %206, i8** %208, align 8
  %209 = load i32, i32* %7, align 4
  %210 = call i8* @BMVAL(i32 %209, i32 20, i32 23)
  %211 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %212 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %211, i32 0, i32 19
  store i8* %210, i8** %212, align 8
  %213 = load i32, i32* %7, align 4
  %214 = call i8* @BMVAL(i32 %213, i32 24, i32 27)
  %215 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %216 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %215, i32 0, i32 18
  store i8* %214, i8** %216, align 8
  %217 = load i32, i32* %7, align 4
  %218 = call i8* @BMVAL(i32 %217, i32 28, i32 31)
  %219 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %220 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %219, i32 0, i32 17
  store i8* %218, i8** %220, align 8
  %221 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %222 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %221, i32 0, i32 12
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @TRCIDR5, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @readl_relaxed(i64 %225)
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %8, align 4
  %228 = call i8* @BMVAL(i32 %227, i32 0, i32 8)
  %229 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %230 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %229, i32 0, i32 16
  store i8* %228, i8** %230, align 8
  %231 = load i32, i32* %8, align 4
  %232 = call i8* @BMVAL(i32 %231, i32 16, i32 21)
  %233 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %234 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %233, i32 0, i32 15
  store i8* %232, i8** %234, align 8
  %235 = load i32, i32* %8, align 4
  %236 = call i8* @BMVAL(i32 %235, i32 22, i32 22)
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %189
  %239 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %240 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %239, i32 0, i32 10
  store i32 1, i32* %240, align 8
  br label %244

241:                                              ; preds = %189
  %242 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %243 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %242, i32 0, i32 10
  store i32 0, i32* %243, align 8
  br label %244

244:                                              ; preds = %241, %238
  %245 = load i32, i32* %8, align 4
  %246 = call i8* @BMVAL(i32 %245, i32 23, i32 23)
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %250 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %249, i32 0, i32 11
  store i32 1, i32* %250, align 4
  br label %254

251:                                              ; preds = %244
  %252 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %253 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %252, i32 0, i32 11
  store i32 0, i32* %253, align 4
  br label %254

254:                                              ; preds = %251, %248
  %255 = load i32, i32* %8, align 4
  %256 = call i8* @BMVAL(i32 %255, i32 25, i32 27)
  %257 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %258 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %257, i32 0, i32 14
  store i8* %256, i8** %258, align 8
  %259 = load i32, i32* %8, align 4
  %260 = call i8* @BMVAL(i32 %259, i32 28, i32 30)
  %261 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %262 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %261, i32 0, i32 13
  store i8* %260, i8** %262, align 8
  %263 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %9, align 8
  %264 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %263, i32 0, i32 12
  %265 = load i64, i64* %264, align 8
  %266 = call i32 @CS_LOCK(i64 %265)
  ret void
}

declare dso_local i32 @etm4_os_unlock(%struct.etmv4_drvdata*) #1

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i8* @BMVAL(i32, i32, i32) #1

declare dso_local i32 @CS_LOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
