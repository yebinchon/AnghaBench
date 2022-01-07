; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_enable_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_enable_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etmv4_drvdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__*, %struct.etmv4_config }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.etmv4_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*, i32* }

@TRCPRGCTLR = common dso_local global i64 0, align 8
@TRCSTATR = common dso_local global i32 0, align 4
@TRCSTATR_IDLE_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"timeout while waiting for Idle Trace Status\0A\00", align 1
@TRCPROCSELR = common dso_local global i64 0, align 8
@TRCCONFIGR = common dso_local global i64 0, align 8
@TRCAUXCTLR = common dso_local global i64 0, align 8
@TRCEVENTCTL0R = common dso_local global i64 0, align 8
@TRCEVENTCTL1R = common dso_local global i64 0, align 8
@TRCSTALLCTLR = common dso_local global i64 0, align 8
@TRCTSCTLR = common dso_local global i64 0, align 8
@TRCSYNCPR = common dso_local global i64 0, align 8
@TRCCCCTLR = common dso_local global i64 0, align 8
@TRCBBCTLR = common dso_local global i64 0, align 8
@TRCTRACEIDR = common dso_local global i64 0, align 8
@TRCVICTLR = common dso_local global i64 0, align 8
@TRCVIIECTLR = common dso_local global i64 0, align 8
@TRCVISSCTLR = common dso_local global i64 0, align 8
@TRCVIPCSSCTLR = common dso_local global i64 0, align 8
@TRCSEQRSTEVR = common dso_local global i64 0, align 8
@TRCSEQSTR = common dso_local global i64 0, align 8
@TRCEXTINSELR = common dso_local global i64 0, align 8
@TRCCIDCCTLR0 = common dso_local global i64 0, align 8
@TRCCIDCCTLR1 = common dso_local global i64 0, align 8
@TRCVMIDCCTLR0 = common dso_local global i64 0, align 8
@TRCVMIDCCTLR1 = common dso_local global i64 0, align 8
@TRCPDCR = common dso_local global i64 0, align 8
@TRCPDCR_PU = common dso_local global i32 0, align 4
@sy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"cpu: %d enable smp call done: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etmv4_drvdata*)* @etm4_enable_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etm4_enable_hw(%struct.etmv4_drvdata* %0) #0 {
  %2 = alloca %struct.etmv4_drvdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.etmv4_config*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.etmv4_drvdata* %0, %struct.etmv4_drvdata** %2, align 8
  %7 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %8 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %7, i32 0, i32 11
  store %struct.etmv4_config* %8, %struct.etmv4_config** %5, align 8
  %9 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %10 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %9, i32 0, i32 10
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %14 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %13, i32 0, i32 9
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @CS_UNLOCK(i64 %15)
  %17 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %18 = call i32 @etm4_os_unlock(%struct.etmv4_drvdata* %17)
  %19 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %20 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %19, i32 0, i32 9
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @coresight_claim_device_unlocked(i64 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %520

26:                                               ; preds = %1
  %27 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %28 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TRCPRGCTLR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel_relaxed(i32 0, i64 %31)
  %33 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %34 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %33, i32 0, i32 9
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @TRCSTATR, align 4
  %37 = load i32, i32* @TRCSTATR_IDLE_BIT, align 4
  %38 = call i64 @coresight_timeout(i64 %35, i32 %36, i32 %37, i32 1)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %26
  %44 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %45 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %48 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %47, i32 0, i32 9
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TRCPROCSELR, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel_relaxed(i32 %46, i64 %51)
  %53 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %54 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %57 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %56, i32 0, i32 9
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TRCCONFIGR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel_relaxed(i32 %55, i64 %60)
  %62 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %63 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %62, i32 0, i32 9
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TRCAUXCTLR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel_relaxed(i32 0, i64 %66)
  %68 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %69 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %72 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %71, i32 0, i32 9
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TRCEVENTCTL0R, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel_relaxed(i32 %70, i64 %75)
  %77 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %78 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %81 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %80, i32 0, i32 9
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TRCEVENTCTL1R, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel_relaxed(i32 %79, i64 %84)
  %86 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %87 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %90 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %89, i32 0, i32 9
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TRCSTALLCTLR, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel_relaxed(i32 %88, i64 %93)
  %95 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %96 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %99 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %98, i32 0, i32 9
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TRCTSCTLR, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel_relaxed(i32 %97, i64 %102)
  %104 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %105 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %108 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %107, i32 0, i32 9
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @TRCSYNCPR, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel_relaxed(i32 %106, i64 %111)
  %113 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %114 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %117 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %116, i32 0, i32 9
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @TRCCCCTLR, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writel_relaxed(i32 %115, i64 %120)
  %122 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %123 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %126 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %125, i32 0, i32 9
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @TRCBBCTLR, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writel_relaxed(i32 %124, i64 %129)
  %131 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %132 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %135 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %134, i32 0, i32 9
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @TRCTRACEIDR, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writel_relaxed(i32 %133, i64 %138)
  %140 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %141 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %144 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %143, i32 0, i32 9
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @TRCVICTLR, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writel_relaxed(i32 %142, i64 %147)
  %149 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %150 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %149, i32 0, i32 10
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %153 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %152, i32 0, i32 9
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @TRCVIIECTLR, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @writel_relaxed(i32 %151, i64 %156)
  %158 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %159 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %158, i32 0, i32 11
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %162 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %161, i32 0, i32 9
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @TRCVISSCTLR, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @writel_relaxed(i32 %160, i64 %165)
  %167 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %168 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %167, i32 0, i32 12
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %171 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %170, i32 0, i32 9
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @TRCVIPCSSCTLR, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @writel_relaxed(i32 %169, i64 %174)
  store i32 0, i32* %3, align 4
  br label %176

176:                                              ; preds = %198, %43
  %177 = load i32, i32* %3, align 4
  %178 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %179 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, 1
  %182 = icmp slt i32 %177, %181
  br i1 %182, label %183, label %201

183:                                              ; preds = %176
  %184 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %185 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %184, i32 0, i32 13
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %3, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %192 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %191, i32 0, i32 9
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* %3, align 4
  %195 = call i64 @TRCSEQEVRn(i32 %194)
  %196 = add nsw i64 %193, %195
  %197 = call i32 @writel_relaxed(i32 %190, i64 %196)
  br label %198

198:                                              ; preds = %183
  %199 = load i32, i32* %3, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %3, align 4
  br label %176

201:                                              ; preds = %176
  %202 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %203 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %202, i32 0, i32 14
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %206 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %205, i32 0, i32 9
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @TRCSEQRSTEVR, align 8
  %209 = add nsw i64 %207, %208
  %210 = call i32 @writel_relaxed(i32 %204, i64 %209)
  %211 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %212 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %211, i32 0, i32 15
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %215 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %214, i32 0, i32 9
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @TRCSEQSTR, align 8
  %218 = add nsw i64 %216, %217
  %219 = call i32 @writel_relaxed(i32 %213, i64 %218)
  %220 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %221 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %220, i32 0, i32 16
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %224 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %223, i32 0, i32 9
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @TRCEXTINSELR, align 8
  %227 = add nsw i64 %225, %226
  %228 = call i32 @writel_relaxed(i32 %222, i64 %227)
  store i32 0, i32* %3, align 4
  br label %229

229:                                              ; preds = %278, %201
  %230 = load i32, i32* %3, align 4
  %231 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %232 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = icmp slt i32 %230, %233
  br i1 %234, label %235, label %281

235:                                              ; preds = %229
  %236 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %237 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %236, i32 0, i32 17
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %3, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %244 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %243, i32 0, i32 9
  %245 = load i64, i64* %244, align 8
  %246 = load i32, i32* %3, align 4
  %247 = call i64 @TRCCNTRLDVRn(i32 %246)
  %248 = add nsw i64 %245, %247
  %249 = call i32 @writel_relaxed(i32 %242, i64 %248)
  %250 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %251 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %250, i32 0, i32 18
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %3, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %258 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %257, i32 0, i32 9
  %259 = load i64, i64* %258, align 8
  %260 = load i32, i32* %3, align 4
  %261 = call i64 @TRCCNTCTLRn(i32 %260)
  %262 = add nsw i64 %259, %261
  %263 = call i32 @writel_relaxed(i32 %256, i64 %262)
  %264 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %265 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %264, i32 0, i32 19
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %3, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %272 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %271, i32 0, i32 9
  %273 = load i64, i64* %272, align 8
  %274 = load i32, i32* %3, align 4
  %275 = call i64 @TRCCNTVRn(i32 %274)
  %276 = add nsw i64 %273, %275
  %277 = call i32 @writel_relaxed(i32 %270, i64 %276)
  br label %278

278:                                              ; preds = %235
  %279 = load i32, i32* %3, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %3, align 4
  br label %229

281:                                              ; preds = %229
  store i32 2, i32* %3, align 4
  br label %282

282:                                              ; preds = %304, %281
  %283 = load i32, i32* %3, align 4
  %284 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %285 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = mul nsw i32 %286, 2
  %288 = icmp slt i32 %283, %287
  br i1 %288, label %289, label %307

289:                                              ; preds = %282
  %290 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %291 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %290, i32 0, i32 20
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %3, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %298 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %297, i32 0, i32 9
  %299 = load i64, i64* %298, align 8
  %300 = load i32, i32* %3, align 4
  %301 = call i64 @TRCRSCTLRn(i32 %300)
  %302 = add nsw i64 %299, %301
  %303 = call i32 @writel_relaxed(i32 %296, i64 %302)
  br label %304

304:                                              ; preds = %289
  %305 = load i32, i32* %3, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %3, align 4
  br label %282

307:                                              ; preds = %282
  store i32 0, i32* %3, align 4
  br label %308

308:                                              ; preds = %357, %307
  %309 = load i32, i32* %3, align 4
  %310 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %311 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = icmp slt i32 %309, %312
  br i1 %313, label %314, label %360

314:                                              ; preds = %308
  %315 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %316 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %315, i32 0, i32 21
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %3, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %323 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %322, i32 0, i32 9
  %324 = load i64, i64* %323, align 8
  %325 = load i32, i32* %3, align 4
  %326 = call i64 @TRCSSCCRn(i32 %325)
  %327 = add nsw i64 %324, %326
  %328 = call i32 @writel_relaxed(i32 %321, i64 %327)
  %329 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %330 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %329, i32 0, i32 22
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %3, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %337 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %336, i32 0, i32 9
  %338 = load i64, i64* %337, align 8
  %339 = load i32, i32* %3, align 4
  %340 = call i64 @TRCSSCSRn(i32 %339)
  %341 = add nsw i64 %338, %340
  %342 = call i32 @writel_relaxed(i32 %335, i64 %341)
  %343 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %344 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %343, i32 0, i32 23
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %3, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %351 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %350, i32 0, i32 9
  %352 = load i64, i64* %351, align 8
  %353 = load i32, i32* %3, align 4
  %354 = call i64 @TRCSSPCICRn(i32 %353)
  %355 = add nsw i64 %352, %354
  %356 = call i32 @writel_relaxed(i32 %349, i64 %355)
  br label %357

357:                                              ; preds = %314
  %358 = load i32, i32* %3, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %3, align 4
  br label %308

360:                                              ; preds = %308
  store i32 0, i32* %3, align 4
  br label %361

361:                                              ; preds = %396, %360
  %362 = load i32, i32* %3, align 4
  %363 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %364 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %363, i32 0, i32 5
  %365 = load i32, i32* %364, align 4
  %366 = icmp slt i32 %362, %365
  br i1 %366, label %367, label %399

367:                                              ; preds = %361
  %368 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %369 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %368, i32 0, i32 31
  %370 = load i32*, i32** %369, align 8
  %371 = load i32, i32* %3, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %376 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %375, i32 0, i32 9
  %377 = load i64, i64* %376, align 8
  %378 = load i32, i32* %3, align 4
  %379 = call i64 @TRCACVRn(i32 %378)
  %380 = add nsw i64 %377, %379
  %381 = call i32 @writeq_relaxed(i32 %374, i64 %380)
  %382 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %383 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %382, i32 0, i32 30
  %384 = load i32*, i32** %383, align 8
  %385 = load i32, i32* %3, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %390 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %389, i32 0, i32 9
  %391 = load i64, i64* %390, align 8
  %392 = load i32, i32* %3, align 4
  %393 = call i64 @TRCACATRn(i32 %392)
  %394 = add nsw i64 %391, %393
  %395 = call i32 @writeq_relaxed(i32 %388, i64 %394)
  br label %396

396:                                              ; preds = %367
  %397 = load i32, i32* %3, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %3, align 4
  br label %361

399:                                              ; preds = %361
  store i32 0, i32* %3, align 4
  br label %400

400:                                              ; preds = %421, %399
  %401 = load i32, i32* %3, align 4
  %402 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %403 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %402, i32 0, i32 6
  %404 = load i32, i32* %403, align 8
  %405 = icmp slt i32 %401, %404
  br i1 %405, label %406, label %424

406:                                              ; preds = %400
  %407 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %408 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %407, i32 0, i32 29
  %409 = load i32*, i32** %408, align 8
  %410 = load i32, i32* %3, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %415 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %414, i32 0, i32 9
  %416 = load i64, i64* %415, align 8
  %417 = load i32, i32* %3, align 4
  %418 = call i64 @TRCCIDCVRn(i32 %417)
  %419 = add nsw i64 %416, %418
  %420 = call i32 @writeq_relaxed(i32 %413, i64 %419)
  br label %421

421:                                              ; preds = %406
  %422 = load i32, i32* %3, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %3, align 4
  br label %400

424:                                              ; preds = %400
  %425 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %426 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %425, i32 0, i32 24
  %427 = load i32, i32* %426, align 8
  %428 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %429 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %428, i32 0, i32 9
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* @TRCCIDCCTLR0, align 8
  %432 = add nsw i64 %430, %431
  %433 = call i32 @writel_relaxed(i32 %427, i64 %432)
  %434 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %435 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %434, i32 0, i32 25
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %438 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %437, i32 0, i32 9
  %439 = load i64, i64* %438, align 8
  %440 = load i64, i64* @TRCCIDCCTLR1, align 8
  %441 = add nsw i64 %439, %440
  %442 = call i32 @writel_relaxed(i32 %436, i64 %441)
  store i32 0, i32* %3, align 4
  br label %443

443:                                              ; preds = %464, %424
  %444 = load i32, i32* %3, align 4
  %445 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %446 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %445, i32 0, i32 7
  %447 = load i32, i32* %446, align 4
  %448 = icmp slt i32 %444, %447
  br i1 %448, label %449, label %467

449:                                              ; preds = %443
  %450 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %451 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %450, i32 0, i32 28
  %452 = load i32*, i32** %451, align 8
  %453 = load i32, i32* %3, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32, i32* %452, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %458 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %457, i32 0, i32 9
  %459 = load i64, i64* %458, align 8
  %460 = load i32, i32* %3, align 4
  %461 = call i64 @TRCVMIDCVRn(i32 %460)
  %462 = add nsw i64 %459, %461
  %463 = call i32 @writeq_relaxed(i32 %456, i64 %462)
  br label %464

464:                                              ; preds = %449
  %465 = load i32, i32* %3, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %3, align 4
  br label %443

467:                                              ; preds = %443
  %468 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %469 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %468, i32 0, i32 26
  %470 = load i32, i32* %469, align 8
  %471 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %472 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %471, i32 0, i32 9
  %473 = load i64, i64* %472, align 8
  %474 = load i64, i64* @TRCVMIDCCTLR0, align 8
  %475 = add nsw i64 %473, %474
  %476 = call i32 @writel_relaxed(i32 %470, i64 %475)
  %477 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %478 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %477, i32 0, i32 27
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %481 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %480, i32 0, i32 9
  %482 = load i64, i64* %481, align 8
  %483 = load i64, i64* @TRCVMIDCCTLR1, align 8
  %484 = add nsw i64 %482, %483
  %485 = call i32 @writel_relaxed(i32 %479, i64 %484)
  %486 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %487 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %486, i32 0, i32 9
  %488 = load i64, i64* %487, align 8
  %489 = load i64, i64* @TRCPDCR, align 8
  %490 = add nsw i64 %488, %489
  %491 = call i32 @readl_relaxed(i64 %490)
  %492 = load i32, i32* @TRCPDCR_PU, align 4
  %493 = or i32 %491, %492
  %494 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %495 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %494, i32 0, i32 9
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* @TRCPDCR, align 8
  %498 = add nsw i64 %496, %497
  %499 = call i32 @writel_relaxed(i32 %493, i64 %498)
  %500 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %501 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %500, i32 0, i32 9
  %502 = load i64, i64* %501, align 8
  %503 = load i64, i64* @TRCPRGCTLR, align 8
  %504 = add nsw i64 %502, %503
  %505 = call i32 @writel_relaxed(i32 1, i64 %504)
  %506 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %507 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %506, i32 0, i32 9
  %508 = load i64, i64* %507, align 8
  %509 = load i32, i32* @TRCSTATR, align 4
  %510 = load i32, i32* @TRCSTATR_IDLE_BIT, align 4
  %511 = call i64 @coresight_timeout(i64 %508, i32 %509, i32 %510, i32 0)
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %516

513:                                              ; preds = %467
  %514 = load %struct.device*, %struct.device** %6, align 8
  %515 = call i32 @dev_err(%struct.device* %514, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %516

516:                                              ; preds = %513, %467
  %517 = load i32, i32* @sy, align 4
  %518 = call i32 @dsb(i32 %517)
  %519 = call i32 (...) @isb()
  br label %520

520:                                              ; preds = %516, %25
  %521 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %522 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %521, i32 0, i32 9
  %523 = load i64, i64* %522, align 8
  %524 = call i32 @CS_LOCK(i64 %523)
  %525 = load %struct.device*, %struct.device** %6, align 8
  %526 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %527 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %526, i32 0, i32 8
  %528 = load i32, i32* %527, align 8
  %529 = load i32, i32* %4, align 4
  %530 = call i32 @dev_dbg(%struct.device* %525, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %528, i32 %529)
  %531 = load i32, i32* %4, align 4
  ret i32 %531
}

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @etm4_os_unlock(%struct.etmv4_drvdata*) #1

declare dso_local i32 @coresight_claim_device_unlocked(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @coresight_timeout(i64, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @TRCSEQEVRn(i32) #1

declare dso_local i64 @TRCCNTRLDVRn(i32) #1

declare dso_local i64 @TRCCNTCTLRn(i32) #1

declare dso_local i64 @TRCCNTVRn(i32) #1

declare dso_local i64 @TRCRSCTLRn(i32) #1

declare dso_local i64 @TRCSSCCRn(i32) #1

declare dso_local i64 @TRCSSCSRn(i32) #1

declare dso_local i64 @TRCSSPCICRn(i32) #1

declare dso_local i32 @writeq_relaxed(i32, i64) #1

declare dso_local i64 @TRCACVRn(i32) #1

declare dso_local i64 @TRCACATRn(i32) #1

declare dso_local i64 @TRCCIDCVRn(i32) #1

declare dso_local i64 @TRCVMIDCVRn(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dsb(i32) #1

declare dso_local i32 @isb(...) #1

declare dso_local i32 @CS_LOCK(i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
