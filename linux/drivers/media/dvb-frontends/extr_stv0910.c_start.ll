; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dtv_frontend_properties = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RCVMODE_NONE = common dso_local global i32 0, align 4
@RSTV0910_P2_DMDISTATE = common dso_local global i64 0, align 8
@RSTV0910_P2_SFRINIT1 = common dso_local global i64 0, align 8
@RSTV0910_P2_SFRINIT0 = common dso_local global i64 0, align 8
@RSTV0910_P2_DEMOD = common dso_local global i64 0, align 8
@RSTV0910_P2_DMDCFGMD = common dso_local global i64 0, align 8
@RSTV0910_TSTTSRS = common dso_local global i32 0, align 4
@RSTV0910_P2_FECM = common dso_local global i64 0, align 8
@RSTV0910_P2_PRVIT = common dso_local global i64 0, align 8
@FEC_NONE = common dso_local global i32 0, align 4
@RSTV0910_P2_ACLC2S2Q = common dso_local global i64 0, align 8
@RSTV0910_P2_ACLC2S28 = common dso_local global i64 0, align 8
@RSTV0910_P2_BCLC2S2Q = common dso_local global i64 0, align 8
@RSTV0910_P2_BCLC2S28 = common dso_local global i64 0, align 8
@RSTV0910_P2_CARHDR = common dso_local global i64 0, align 8
@RSTV0910_P2_CARFREQ = common dso_local global i64 0, align 8
@RSTV0910_P2_ACLC2S216A = common dso_local global i64 0, align 8
@RSTV0910_P2_ACLC2S232A = common dso_local global i64 0, align 8
@RSTV0910_P2_BCLC2S216A = common dso_local global i64 0, align 8
@RSTV0910_P2_BCLC2S232A = common dso_local global i64 0, align 8
@RSTV0910_TSTRES0 = common dso_local global i64 0, align 8
@RSTV0910_P2_CARCFG = common dso_local global i64 0, align 8
@RSTV0910_P2_CFRUP1 = common dso_local global i64 0, align 8
@RSTV0910_P2_CFRUP0 = common dso_local global i64 0, align 8
@RSTV0910_P2_CFRLOW1 = common dso_local global i64 0, align 8
@RSTV0910_P2_CFRLOW0 = common dso_local global i64 0, align 8
@RSTV0910_P2_CFRINIT1 = common dso_local global i64 0, align 8
@RSTV0910_P2_CFRINIT0 = common dso_local global i64 0, align 8
@TUNING_DELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*, %struct.dtv_frontend_properties*)* @start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start(%struct.stv* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stv*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stv* %0, %struct.stv** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %9 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %10 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 100000
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %15 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 70000000
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %385

21:                                               ; preds = %13
  %22 = load i32, i32* @RCVMODE_NONE, align 4
  %23 = load %struct.stv*, %struct.stv** %4, align 8
  %24 = getelementptr inbounds %struct.stv, %struct.stv* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 8
  %25 = load %struct.stv*, %struct.stv** %4, align 8
  %26 = getelementptr inbounds %struct.stv, %struct.stv* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.stv*, %struct.stv** %4, align 8
  %28 = getelementptr inbounds %struct.stv, %struct.stv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load %struct.stv*, %struct.stv** %4, align 8
  %33 = load i64, i64* @RSTV0910_P2_DMDISTATE, align 8
  %34 = load %struct.stv*, %struct.stv** %4, align 8
  %35 = getelementptr inbounds %struct.stv, %struct.stv* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = call i32 @write_reg(%struct.stv* %32, i64 %37, i32 92)
  br label %39

39:                                               ; preds = %31, %21
  %40 = load %struct.stv*, %struct.stv** %4, align 8
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %42 = call i32 @init_search_param(%struct.stv* %40, %struct.dtv_frontend_properties* %41)
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %44 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %45, 1000000
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.stv*, %struct.stv** %4, align 8
  %49 = getelementptr inbounds %struct.stv, %struct.stv* %48, i32 0, i32 1
  store i32 3000, i32* %49, align 4
  %50 = load %struct.stv*, %struct.stv** %4, align 8
  %51 = getelementptr inbounds %struct.stv, %struct.stv* %50, i32 0, i32 2
  store i32 2000, i32* %51, align 8
  br label %101

52:                                               ; preds = %39
  %53 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %54 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sle i32 %55, 2000000
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.stv*, %struct.stv** %4, align 8
  %59 = getelementptr inbounds %struct.stv, %struct.stv* %58, i32 0, i32 1
  store i32 2500, i32* %59, align 4
  %60 = load %struct.stv*, %struct.stv** %4, align 8
  %61 = getelementptr inbounds %struct.stv, %struct.stv* %60, i32 0, i32 2
  store i32 1300, i32* %61, align 8
  br label %100

62:                                               ; preds = %52
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sle i32 %65, 5000000
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.stv*, %struct.stv** %4, align 8
  %69 = getelementptr inbounds %struct.stv, %struct.stv* %68, i32 0, i32 1
  store i32 1000, i32* %69, align 4
  %70 = load %struct.stv*, %struct.stv** %4, align 8
  %71 = getelementptr inbounds %struct.stv, %struct.stv* %70, i32 0, i32 2
  store i32 650, i32* %71, align 8
  br label %99

72:                                               ; preds = %62
  %73 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %74 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp sle i32 %75, 10000000
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.stv*, %struct.stv** %4, align 8
  %79 = getelementptr inbounds %struct.stv, %struct.stv* %78, i32 0, i32 1
  store i32 700, i32* %79, align 4
  %80 = load %struct.stv*, %struct.stv** %4, align 8
  %81 = getelementptr inbounds %struct.stv, %struct.stv* %80, i32 0, i32 2
  store i32 350, i32* %81, align 8
  br label %98

82:                                               ; preds = %72
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %85, 20000000
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.stv*, %struct.stv** %4, align 8
  %89 = getelementptr inbounds %struct.stv, %struct.stv* %88, i32 0, i32 1
  store i32 400, i32* %89, align 4
  %90 = load %struct.stv*, %struct.stv** %4, align 8
  %91 = getelementptr inbounds %struct.stv, %struct.stv* %90, i32 0, i32 2
  store i32 200, i32* %91, align 8
  br label %97

92:                                               ; preds = %82
  %93 = load %struct.stv*, %struct.stv** %4, align 8
  %94 = getelementptr inbounds %struct.stv, %struct.stv* %93, i32 0, i32 1
  store i32 300, i32* %94, align 4
  %95 = load %struct.stv*, %struct.stv** %4, align 8
  %96 = getelementptr inbounds %struct.stv, %struct.stv* %95, i32 0, i32 2
  store i32 200, i32* %96, align 8
  br label %97

97:                                               ; preds = %92, %87
  br label %98

98:                                               ; preds = %97, %77
  br label %99

99:                                               ; preds = %98, %67
  br label %100

100:                                              ; preds = %99, %57
  br label %101

101:                                              ; preds = %100, %47
  %102 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %103 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.stv*, %struct.stv** %4, align 8
  %106 = getelementptr inbounds %struct.stv, %struct.stv* %105, i32 0, i32 7
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @muldiv32(i32 %104, i32 65536, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load %struct.stv*, %struct.stv** %4, align 8
  %112 = load i64, i64* @RSTV0910_P2_SFRINIT1, align 8
  %113 = load %struct.stv*, %struct.stv** %4, align 8
  %114 = getelementptr inbounds %struct.stv, %struct.stv* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %112, %115
  %117 = load i32, i32* %8, align 4
  %118 = ashr i32 %117, 8
  %119 = and i32 %118, 127
  %120 = call i32 @write_reg(%struct.stv* %111, i64 %116, i32 %119)
  %121 = load %struct.stv*, %struct.stv** %4, align 8
  %122 = load i64, i64* @RSTV0910_P2_SFRINIT0, align 8
  %123 = load %struct.stv*, %struct.stv** %4, align 8
  %124 = getelementptr inbounds %struct.stv, %struct.stv* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = load i32, i32* %8, align 4
  %128 = and i32 %127, 255
  %129 = call i32 @write_reg(%struct.stv* %121, i64 %126, i32 %128)
  %130 = load %struct.stv*, %struct.stv** %4, align 8
  %131 = getelementptr inbounds %struct.stv, %struct.stv* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, 128
  store i32 %133, i32* %131, align 4
  %134 = load %struct.stv*, %struct.stv** %4, align 8
  %135 = load i64, i64* @RSTV0910_P2_DEMOD, align 8
  %136 = load %struct.stv*, %struct.stv** %4, align 8
  %137 = getelementptr inbounds %struct.stv, %struct.stv* %136, i32 0, i32 6
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  %140 = load %struct.stv*, %struct.stv** %4, align 8
  %141 = getelementptr inbounds %struct.stv, %struct.stv* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @write_reg(%struct.stv* %134, i64 %139, i32 %142)
  %144 = load %struct.stv*, %struct.stv** %4, align 8
  %145 = load i64, i64* @RSTV0910_P2_DMDCFGMD, align 8
  %146 = load %struct.stv*, %struct.stv** %4, align 8
  %147 = getelementptr inbounds %struct.stv, %struct.stv* %146, i32 0, i32 6
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %145, %148
  %150 = call i32 @read_reg(%struct.stv* %144, i64 %149, i32* %7)
  %151 = load %struct.stv*, %struct.stv** %4, align 8
  %152 = load i64, i64* @RSTV0910_P2_DMDCFGMD, align 8
  %153 = load %struct.stv*, %struct.stv** %4, align 8
  %154 = getelementptr inbounds %struct.stv, %struct.stv* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %152, %155
  %157 = load i32, i32* %7, align 4
  %158 = or i32 %157, 192
  store i32 %158, i32* %7, align 4
  %159 = call i32 @write_reg(%struct.stv* %151, i64 %156, i32 %158)
  %160 = load %struct.stv*, %struct.stv** %4, align 8
  %161 = load i32, i32* @RSTV0910_TSTTSRS, align 4
  %162 = load %struct.stv*, %struct.stv** %4, align 8
  %163 = getelementptr inbounds %struct.stv, %struct.stv* %162, i32 0, i32 8
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 2, i32 1
  %168 = call i32 @write_shared_reg(%struct.stv* %160, i32 %161, i32 %167, i32 0)
  %169 = load %struct.stv*, %struct.stv** %4, align 8
  %170 = load i64, i64* @RSTV0910_P2_FECM, align 8
  %171 = load %struct.stv*, %struct.stv** %4, align 8
  %172 = getelementptr inbounds %struct.stv, %struct.stv* %171, i32 0, i32 6
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %170, %173
  %175 = call i32 @write_reg(%struct.stv* %169, i64 %174, i32 0)
  %176 = load %struct.stv*, %struct.stv** %4, align 8
  %177 = load i64, i64* @RSTV0910_P2_PRVIT, align 8
  %178 = load %struct.stv*, %struct.stv** %4, align 8
  %179 = getelementptr inbounds %struct.stv, %struct.stv* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %177, %180
  %182 = call i32 @write_reg(%struct.stv* %176, i64 %181, i32 47)
  %183 = load %struct.stv*, %struct.stv** %4, align 8
  %184 = load i32, i32* @FEC_NONE, align 4
  %185 = call i32 @enable_puncture_rate(%struct.stv* %183, i32 %184)
  %186 = load %struct.stv*, %struct.stv** %4, align 8
  %187 = load i64, i64* @RSTV0910_P2_ACLC2S2Q, align 8
  %188 = load %struct.stv*, %struct.stv** %4, align 8
  %189 = getelementptr inbounds %struct.stv, %struct.stv* %188, i32 0, i32 6
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %187, %190
  %192 = call i32 @write_reg(%struct.stv* %186, i64 %191, i32 11)
  %193 = load %struct.stv*, %struct.stv** %4, align 8
  %194 = load i64, i64* @RSTV0910_P2_ACLC2S28, align 8
  %195 = load %struct.stv*, %struct.stv** %4, align 8
  %196 = getelementptr inbounds %struct.stv, %struct.stv* %195, i32 0, i32 6
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %194, %197
  %199 = call i32 @write_reg(%struct.stv* %193, i64 %198, i32 10)
  %200 = load %struct.stv*, %struct.stv** %4, align 8
  %201 = load i64, i64* @RSTV0910_P2_BCLC2S2Q, align 8
  %202 = load %struct.stv*, %struct.stv** %4, align 8
  %203 = getelementptr inbounds %struct.stv, %struct.stv* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %201, %204
  %206 = call i32 @write_reg(%struct.stv* %200, i64 %205, i32 132)
  %207 = load %struct.stv*, %struct.stv** %4, align 8
  %208 = load i64, i64* @RSTV0910_P2_BCLC2S28, align 8
  %209 = load %struct.stv*, %struct.stv** %4, align 8
  %210 = getelementptr inbounds %struct.stv, %struct.stv* %209, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %208, %211
  %213 = call i32 @write_reg(%struct.stv* %207, i64 %212, i32 132)
  %214 = load %struct.stv*, %struct.stv** %4, align 8
  %215 = load i64, i64* @RSTV0910_P2_CARHDR, align 8
  %216 = load %struct.stv*, %struct.stv** %4, align 8
  %217 = getelementptr inbounds %struct.stv, %struct.stv* %216, i32 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %215, %218
  %220 = call i32 @write_reg(%struct.stv* %214, i64 %219, i32 28)
  %221 = load %struct.stv*, %struct.stv** %4, align 8
  %222 = load i64, i64* @RSTV0910_P2_CARFREQ, align 8
  %223 = load %struct.stv*, %struct.stv** %4, align 8
  %224 = getelementptr inbounds %struct.stv, %struct.stv* %223, i32 0, i32 6
  %225 = load i64, i64* %224, align 8
  %226 = add nsw i64 %222, %225
  %227 = call i32 @write_reg(%struct.stv* %221, i64 %226, i32 121)
  %228 = load %struct.stv*, %struct.stv** %4, align 8
  %229 = load i64, i64* @RSTV0910_P2_ACLC2S216A, align 8
  %230 = load %struct.stv*, %struct.stv** %4, align 8
  %231 = getelementptr inbounds %struct.stv, %struct.stv* %230, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %229, %232
  %234 = call i32 @write_reg(%struct.stv* %228, i64 %233, i32 41)
  %235 = load %struct.stv*, %struct.stv** %4, align 8
  %236 = load i64, i64* @RSTV0910_P2_ACLC2S232A, align 8
  %237 = load %struct.stv*, %struct.stv** %4, align 8
  %238 = getelementptr inbounds %struct.stv, %struct.stv* %237, i32 0, i32 6
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %236, %239
  %241 = call i32 @write_reg(%struct.stv* %235, i64 %240, i32 9)
  %242 = load %struct.stv*, %struct.stv** %4, align 8
  %243 = load i64, i64* @RSTV0910_P2_BCLC2S216A, align 8
  %244 = load %struct.stv*, %struct.stv** %4, align 8
  %245 = getelementptr inbounds %struct.stv, %struct.stv* %244, i32 0, i32 6
  %246 = load i64, i64* %245, align 8
  %247 = add nsw i64 %243, %246
  %248 = call i32 @write_reg(%struct.stv* %242, i64 %247, i32 132)
  %249 = load %struct.stv*, %struct.stv** %4, align 8
  %250 = load i64, i64* @RSTV0910_P2_BCLC2S232A, align 8
  %251 = load %struct.stv*, %struct.stv** %4, align 8
  %252 = getelementptr inbounds %struct.stv, %struct.stv* %251, i32 0, i32 6
  %253 = load i64, i64* %252, align 8
  %254 = add nsw i64 %250, %253
  %255 = call i32 @write_reg(%struct.stv* %249, i64 %254, i32 132)
  %256 = load %struct.stv*, %struct.stv** %4, align 8
  %257 = load i64, i64* @RSTV0910_TSTRES0, align 8
  %258 = load %struct.stv*, %struct.stv** %4, align 8
  %259 = getelementptr inbounds %struct.stv, %struct.stv* %258, i32 0, i32 8
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i32 4, i32 8
  %264 = call i32 @write_reg(%struct.stv* %256, i64 %257, i32 %263)
  %265 = load %struct.stv*, %struct.stv** %4, align 8
  %266 = load i64, i64* @RSTV0910_TSTRES0, align 8
  %267 = call i32 @write_reg(%struct.stv* %265, i64 %266, i32 0)
  %268 = load %struct.stv*, %struct.stv** %4, align 8
  %269 = call i32 @set_vth_default(%struct.stv* %268)
  %270 = load %struct.stv*, %struct.stv** %4, align 8
  %271 = load i64, i64* @RSTV0910_P2_DMDISTATE, align 8
  %272 = load %struct.stv*, %struct.stv** %4, align 8
  %273 = getelementptr inbounds %struct.stv, %struct.stv* %272, i32 0, i32 6
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %271, %274
  %276 = call i32 @write_reg(%struct.stv* %270, i64 %275, i32 31)
  %277 = load %struct.stv*, %struct.stv** %4, align 8
  %278 = load i64, i64* @RSTV0910_P2_CARCFG, align 8
  %279 = load %struct.stv*, %struct.stv** %4, align 8
  %280 = getelementptr inbounds %struct.stv, %struct.stv* %279, i32 0, i32 6
  %281 = load i64, i64* %280, align 8
  %282 = add nsw i64 %278, %281
  %283 = call i32 @write_reg(%struct.stv* %277, i64 %282, i32 70)
  %284 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %285 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = icmp sle i32 %286, 5000000
  br i1 %287, label %288, label %294

288:                                              ; preds = %101
  %289 = load %struct.stv*, %struct.stv** %4, align 8
  %290 = getelementptr inbounds %struct.stv, %struct.stv* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 8
  %292 = sdiv i32 %291, 2000
  %293 = add nsw i32 %292, 80
  store i32 %293, i32* %6, align 4
  br label %300

294:                                              ; preds = %101
  %295 = load %struct.stv*, %struct.stv** %4, align 8
  %296 = getelementptr inbounds %struct.stv, %struct.stv* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = sdiv i32 %297, 2000
  %299 = add nsw i32 %298, 1600
  store i32 %299, i32* %6, align 4
  br label %300

300:                                              ; preds = %294, %288
  %301 = load i32, i32* %6, align 4
  %302 = shl i32 %301, 16
  %303 = load %struct.stv*, %struct.stv** %4, align 8
  %304 = getelementptr inbounds %struct.stv, %struct.stv* %303, i32 0, i32 7
  %305 = load %struct.TYPE_2__*, %struct.TYPE_2__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = sdiv i32 %307, 1000
  %309 = sdiv i32 %302, %308
  store i32 %309, i32* %6, align 4
  %310 = load %struct.stv*, %struct.stv** %4, align 8
  %311 = load i64, i64* @RSTV0910_P2_CFRUP1, align 8
  %312 = load %struct.stv*, %struct.stv** %4, align 8
  %313 = getelementptr inbounds %struct.stv, %struct.stv* %312, i32 0, i32 6
  %314 = load i64, i64* %313, align 8
  %315 = add nsw i64 %311, %314
  %316 = load i32, i32* %6, align 4
  %317 = ashr i32 %316, 8
  %318 = and i32 %317, 255
  %319 = call i32 @write_reg(%struct.stv* %310, i64 %315, i32 %318)
  %320 = load %struct.stv*, %struct.stv** %4, align 8
  %321 = load i64, i64* @RSTV0910_P2_CFRUP0, align 8
  %322 = load %struct.stv*, %struct.stv** %4, align 8
  %323 = getelementptr inbounds %struct.stv, %struct.stv* %322, i32 0, i32 6
  %324 = load i64, i64* %323, align 8
  %325 = add nsw i64 %321, %324
  %326 = load i32, i32* %6, align 4
  %327 = and i32 %326, 255
  %328 = call i32 @write_reg(%struct.stv* %320, i64 %325, i32 %327)
  %329 = load i32, i32* %6, align 4
  %330 = sub nsw i32 0, %329
  store i32 %330, i32* %6, align 4
  %331 = load %struct.stv*, %struct.stv** %4, align 8
  %332 = load i64, i64* @RSTV0910_P2_CFRLOW1, align 8
  %333 = load %struct.stv*, %struct.stv** %4, align 8
  %334 = getelementptr inbounds %struct.stv, %struct.stv* %333, i32 0, i32 6
  %335 = load i64, i64* %334, align 8
  %336 = add nsw i64 %332, %335
  %337 = load i32, i32* %6, align 4
  %338 = ashr i32 %337, 8
  %339 = and i32 %338, 255
  %340 = call i32 @write_reg(%struct.stv* %331, i64 %336, i32 %339)
  %341 = load %struct.stv*, %struct.stv** %4, align 8
  %342 = load i64, i64* @RSTV0910_P2_CFRLOW0, align 8
  %343 = load %struct.stv*, %struct.stv** %4, align 8
  %344 = getelementptr inbounds %struct.stv, %struct.stv* %343, i32 0, i32 6
  %345 = load i64, i64* %344, align 8
  %346 = add nsw i64 %342, %345
  %347 = load i32, i32* %6, align 4
  %348 = and i32 %347, 255
  %349 = call i32 @write_reg(%struct.stv* %341, i64 %346, i32 %348)
  %350 = load %struct.stv*, %struct.stv** %4, align 8
  %351 = load i64, i64* @RSTV0910_P2_CFRINIT1, align 8
  %352 = load %struct.stv*, %struct.stv** %4, align 8
  %353 = getelementptr inbounds %struct.stv, %struct.stv* %352, i32 0, i32 6
  %354 = load i64, i64* %353, align 8
  %355 = add nsw i64 %351, %354
  %356 = call i32 @write_reg(%struct.stv* %350, i64 %355, i32 0)
  %357 = load %struct.stv*, %struct.stv** %4, align 8
  %358 = load i64, i64* @RSTV0910_P2_CFRINIT0, align 8
  %359 = load %struct.stv*, %struct.stv** %4, align 8
  %360 = getelementptr inbounds %struct.stv, %struct.stv* %359, i32 0, i32 6
  %361 = load i64, i64* %360, align 8
  %362 = add nsw i64 %358, %361
  %363 = call i32 @write_reg(%struct.stv* %357, i64 %362, i32 0)
  %364 = load %struct.stv*, %struct.stv** %4, align 8
  %365 = load i64, i64* @RSTV0910_P2_DMDISTATE, align 8
  %366 = load %struct.stv*, %struct.stv** %4, align 8
  %367 = getelementptr inbounds %struct.stv, %struct.stv* %366, i32 0, i32 6
  %368 = load i64, i64* %367, align 8
  %369 = add nsw i64 %365, %368
  %370 = call i32 @write_reg(%struct.stv* %364, i64 %369, i32 31)
  %371 = load %struct.stv*, %struct.stv** %4, align 8
  %372 = load i64, i64* @RSTV0910_P2_DMDISTATE, align 8
  %373 = load %struct.stv*, %struct.stv** %4, align 8
  %374 = getelementptr inbounds %struct.stv, %struct.stv* %373, i32 0, i32 6
  %375 = load i64, i64* %374, align 8
  %376 = add nsw i64 %372, %375
  %377 = call i32 @write_reg(%struct.stv* %371, i64 %376, i32 21)
  %378 = load i64, i64* @TUNING_DELAY, align 8
  %379 = load %struct.stv*, %struct.stv** %4, align 8
  %380 = getelementptr inbounds %struct.stv, %struct.stv* %379, i32 0, i32 5
  %381 = load i64, i64* %380, align 8
  %382 = add nsw i64 %381, %378
  store i64 %382, i64* %380, align 8
  %383 = load %struct.stv*, %struct.stv** %4, align 8
  %384 = getelementptr inbounds %struct.stv, %struct.stv* %383, i32 0, i32 0
  store i32 1, i32* %384, align 8
  store i32 0, i32* %3, align 4
  br label %385

385:                                              ; preds = %300, %18
  %386 = load i32, i32* %3, align 4
  ret i32 %386
}

declare dso_local i32 @write_reg(%struct.stv*, i64, i32) #1

declare dso_local i32 @init_search_param(%struct.stv*, %struct.dtv_frontend_properties*) #1

declare dso_local i32 @muldiv32(i32, i32, i32) #1

declare dso_local i32 @read_reg(%struct.stv*, i64, i32*) #1

declare dso_local i32 @write_shared_reg(%struct.stv*, i32, i32, i32) #1

declare dso_local i32 @enable_puncture_rate(%struct.stv*, i32) #1

declare dso_local i32 @set_vth_default(%struct.stv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
