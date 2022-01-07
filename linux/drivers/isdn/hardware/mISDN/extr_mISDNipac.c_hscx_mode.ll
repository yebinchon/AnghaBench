; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hscx_hw = type { i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i8, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"%s: HSCX %c protocol %x-->%x ch %d\0A\00", align 1
@IPAC_TYPE_IPACX = common dso_local global i32 0, align 4
@ISACX_BCHA_TSDP_BC1 = common dso_local global i32 0, align 4
@ISACX_BCHA_CR = common dso_local global i32 0, align 4
@ISACX_BCHB_TSDP_BC1 = common dso_local global i32 0, align 4
@ISACX_BCHB_CR = common dso_local global i32 0, align 4
@IPACX_MODEB = common dso_local global i32 0, align 4
@IPACX_EXMB = common dso_local global i32 0, align 4
@IPACX_MASKB = common dso_local global i32 0, align 4
@FLG_HDLC = common dso_local global i32 0, align 4
@FLG_TRANSPARENT = common dso_local global i32 0, align 4
@IPACX_B_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: protocol not known %x\0A\00", align 1
@ENOPROTOOPT = common dso_local global i32 0, align 4
@IPAC_TYPE_IPAC = common dso_local global i32 0, align 4
@IPAC_CCR1 = common dso_local global i32 0, align 4
@IPAC_CCR2 = common dso_local global i32 0, align 4
@IPAC_XCCR = common dso_local global i32 0, align 4
@IPAC_RCCR = common dso_local global i32 0, align 4
@IPAC_TSAX = common dso_local global i32 0, align 4
@IPAC_TSAR = common dso_local global i32 0, align 4
@IPAC_MODEB = common dso_local global i32 0, align 4
@IPAC_MASKB = common dso_local global i32 0, align 4
@IPAC_TYPE_HSCX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hscx_hw*, i32)* @hscx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hscx_mode(%struct.hscx_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hscx_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.hscx_hw* %0, %struct.hscx_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %7 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %12 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 4
  %15 = sext i8 %14 to i32
  %16 = add nsw i32 64, %15
  %17 = trunc i32 %16 to i8
  %18 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %19 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %24 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 4
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %10, i8 signext %17, i32 %21, i32 %22, i8 signext %26)
  %28 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %29 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IPAC_TYPE_IPACX, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %137

36:                                               ; preds = %2
  %37 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %38 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 4
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %46 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* @ISACX_BCHA_TSDP_BC1, align 4
  %49 = call i32 @WriteIPAC(%struct.TYPE_4__* %47, i32 %48, i32 128)
  %50 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %51 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* @ISACX_BCHA_CR, align 4
  %54 = call i32 @WriteIPAC(%struct.TYPE_4__* %52, i32 %53, i32 136)
  br label %66

55:                                               ; preds = %36
  %56 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %57 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* @ISACX_BCHB_TSDP_BC1, align 4
  %60 = call i32 @WriteIPAC(%struct.TYPE_4__* %58, i32 %59, i32 129)
  %61 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %62 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* @ISACX_BCHB_CR, align 4
  %65 = call i32 @WriteIPAC(%struct.TYPE_4__* %63, i32 %64, i32 136)
  br label %66

66:                                               ; preds = %55, %44
  %67 = load i32, i32* %5, align 4
  switch i32 %67, label %126 [
    i32 128, label %68
    i32 129, label %90
    i32 130, label %108
  ]

68:                                               ; preds = %66
  %69 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %70 = load i32, i32* @IPACX_MODEB, align 4
  %71 = call i32 @WriteHSCX(%struct.hscx_hw* %69, i32 %70, i32 192)
  %72 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %73 = load i32, i32* @IPACX_EXMB, align 4
  %74 = call i32 @WriteHSCX(%struct.hscx_hw* %72, i32 %73, i32 48)
  %75 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %76 = load i32, i32* @IPACX_MASKB, align 4
  %77 = call i32 @WriteHSCX(%struct.hscx_hw* %75, i32 %76, i32 255)
  %78 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %79 = call i32 @hscx_cmdr(%struct.hscx_hw* %78, i32 65)
  %80 = load i32, i32* @FLG_HDLC, align 4
  %81 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %82 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = call i32 @test_and_clear_bit(i32 %80, i32* %83)
  %85 = load i32, i32* @FLG_TRANSPARENT, align 4
  %86 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %87 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = call i32 @test_and_clear_bit(i32 %85, i32* %88)
  br label %136

90:                                               ; preds = %66
  %91 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %92 = load i32, i32* @IPACX_MODEB, align 4
  %93 = call i32 @WriteHSCX(%struct.hscx_hw* %91, i32 %92, i32 136)
  %94 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %95 = load i32, i32* @IPACX_EXMB, align 4
  %96 = call i32 @WriteHSCX(%struct.hscx_hw* %94, i32 %95, i32 0)
  %97 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %98 = call i32 @hscx_cmdr(%struct.hscx_hw* %97, i32 65)
  %99 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %100 = load i32, i32* @IPACX_MASKB, align 4
  %101 = load i32, i32* @IPACX_B_ON, align 4
  %102 = call i32 @WriteHSCX(%struct.hscx_hw* %99, i32 %100, i32 %101)
  %103 = load i32, i32* @FLG_TRANSPARENT, align 4
  %104 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %105 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = call i32 @test_and_set_bit(i32 %103, i32* %106)
  br label %136

108:                                              ; preds = %66
  %109 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %110 = load i32, i32* @IPACX_MODEB, align 4
  %111 = call i32 @WriteHSCX(%struct.hscx_hw* %109, i32 %110, i32 192)
  %112 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %113 = load i32, i32* @IPACX_EXMB, align 4
  %114 = call i32 @WriteHSCX(%struct.hscx_hw* %112, i32 %113, i32 0)
  %115 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %116 = call i32 @hscx_cmdr(%struct.hscx_hw* %115, i32 65)
  %117 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %118 = load i32, i32* @IPACX_MASKB, align 4
  %119 = load i32, i32* @IPACX_B_ON, align 4
  %120 = call i32 @WriteHSCX(%struct.hscx_hw* %117, i32 %118, i32 %119)
  %121 = load i32, i32* @FLG_HDLC, align 4
  %122 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %123 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = call i32 @test_and_set_bit(i32 %121, i32* %124)
  br label %136

126:                                              ; preds = %66
  %127 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %128 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %132)
  %134 = load i32, i32* @ENOPROTOOPT, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %359

136:                                              ; preds = %108, %90, %68
  br label %354

137:                                              ; preds = %2
  %138 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %139 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %138, i32 0, i32 2
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @IPAC_TYPE_IPAC, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %243

146:                                              ; preds = %137
  %147 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %148 = load i32, i32* @IPAC_CCR1, align 4
  %149 = call i32 @WriteHSCX(%struct.hscx_hw* %147, i32 %148, i32 130)
  %150 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %151 = load i32, i32* @IPAC_CCR2, align 4
  %152 = call i32 @WriteHSCX(%struct.hscx_hw* %150, i32 %151, i32 48)
  %153 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %154 = load i32, i32* @IPAC_XCCR, align 4
  %155 = call i32 @WriteHSCX(%struct.hscx_hw* %153, i32 %154, i32 7)
  %156 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %157 = load i32, i32* @IPAC_RCCR, align 4
  %158 = call i32 @WriteHSCX(%struct.hscx_hw* %156, i32 %157, i32 7)
  %159 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %160 = load i32, i32* @IPAC_TSAX, align 4
  %161 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %162 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @WriteHSCX(%struct.hscx_hw* %159, i32 %160, i32 %163)
  %165 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %166 = load i32, i32* @IPAC_TSAR, align 4
  %167 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %168 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @WriteHSCX(%struct.hscx_hw* %165, i32 %166, i32 %169)
  %171 = load i32, i32* %5, align 4
  switch i32 %171, label %232 [
    i32 128, label %172
    i32 129, label %198
    i32 130, label %215
  ]

172:                                              ; preds = %146
  %173 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %174 = load i32, i32* @IPAC_TSAX, align 4
  %175 = call i32 @WriteHSCX(%struct.hscx_hw* %173, i32 %174, i32 31)
  %176 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %177 = load i32, i32* @IPAC_TSAR, align 4
  %178 = call i32 @WriteHSCX(%struct.hscx_hw* %176, i32 %177, i32 31)
  %179 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %180 = load i32, i32* @IPAC_MODEB, align 4
  %181 = call i32 @WriteHSCX(%struct.hscx_hw* %179, i32 %180, i32 132)
  %182 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %183 = load i32, i32* @IPAC_CCR1, align 4
  %184 = call i32 @WriteHSCX(%struct.hscx_hw* %182, i32 %183, i32 130)
  %185 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %186 = load i32, i32* @IPAC_MASKB, align 4
  %187 = call i32 @WriteHSCX(%struct.hscx_hw* %185, i32 %186, i32 255)
  %188 = load i32, i32* @FLG_HDLC, align 4
  %189 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %190 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  %192 = call i32 @test_and_clear_bit(i32 %188, i32* %191)
  %193 = load i32, i32* @FLG_TRANSPARENT, align 4
  %194 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %195 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 2
  %197 = call i32 @test_and_clear_bit(i32 %193, i32* %196)
  br label %242

198:                                              ; preds = %146
  %199 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %200 = load i32, i32* @IPAC_MODEB, align 4
  %201 = call i32 @WriteHSCX(%struct.hscx_hw* %199, i32 %200, i32 228)
  %202 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %203 = load i32, i32* @IPAC_CCR1, align 4
  %204 = call i32 @WriteHSCX(%struct.hscx_hw* %202, i32 %203, i32 130)
  %205 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %206 = call i32 @hscx_cmdr(%struct.hscx_hw* %205, i32 65)
  %207 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %208 = load i32, i32* @IPAC_MASKB, align 4
  %209 = call i32 @WriteHSCX(%struct.hscx_hw* %207, i32 %208, i32 0)
  %210 = load i32, i32* @FLG_TRANSPARENT, align 4
  %211 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %212 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 2
  %214 = call i32 @test_and_set_bit(i32 %210, i32* %213)
  br label %242

215:                                              ; preds = %146
  %216 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %217 = load i32, i32* @IPAC_MODEB, align 4
  %218 = call i32 @WriteHSCX(%struct.hscx_hw* %216, i32 %217, i32 140)
  %219 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %220 = load i32, i32* @IPAC_CCR1, align 4
  %221 = call i32 @WriteHSCX(%struct.hscx_hw* %219, i32 %220, i32 138)
  %222 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %223 = call i32 @hscx_cmdr(%struct.hscx_hw* %222, i32 65)
  %224 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %225 = load i32, i32* @IPAC_MASKB, align 4
  %226 = call i32 @WriteHSCX(%struct.hscx_hw* %224, i32 %225, i32 0)
  %227 = load i32, i32* @FLG_HDLC, align 4
  %228 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %229 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 2
  %231 = call i32 @test_and_set_bit(i32 %227, i32* %230)
  br label %242

232:                                              ; preds = %146
  %233 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %234 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %233, i32 0, i32 2
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %5, align 4
  %239 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %237, i32 %238)
  %240 = load i32, i32* @ENOPROTOOPT, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %3, align 4
  br label %359

242:                                              ; preds = %215, %198, %172
  br label %353

243:                                              ; preds = %137
  %244 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %245 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %244, i32 0, i32 2
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @IPAC_TYPE_HSCX, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %349

252:                                              ; preds = %243
  %253 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %254 = load i32, i32* @IPAC_CCR1, align 4
  %255 = call i32 @WriteHSCX(%struct.hscx_hw* %253, i32 %254, i32 133)
  %256 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %257 = load i32, i32* @IPAC_CCR2, align 4
  %258 = call i32 @WriteHSCX(%struct.hscx_hw* %256, i32 %257, i32 48)
  %259 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %260 = load i32, i32* @IPAC_XCCR, align 4
  %261 = call i32 @WriteHSCX(%struct.hscx_hw* %259, i32 %260, i32 7)
  %262 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %263 = load i32, i32* @IPAC_RCCR, align 4
  %264 = call i32 @WriteHSCX(%struct.hscx_hw* %262, i32 %263, i32 7)
  %265 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %266 = load i32, i32* @IPAC_TSAX, align 4
  %267 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %268 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @WriteHSCX(%struct.hscx_hw* %265, i32 %266, i32 %269)
  %271 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %272 = load i32, i32* @IPAC_TSAR, align 4
  %273 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %274 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @WriteHSCX(%struct.hscx_hw* %271, i32 %272, i32 %275)
  %277 = load i32, i32* %5, align 4
  switch i32 %277, label %338 [
    i32 128, label %278
    i32 129, label %304
    i32 130, label %321
  ]

278:                                              ; preds = %252
  %279 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %280 = load i32, i32* @IPAC_TSAX, align 4
  %281 = call i32 @WriteHSCX(%struct.hscx_hw* %279, i32 %280, i32 31)
  %282 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %283 = load i32, i32* @IPAC_TSAR, align 4
  %284 = call i32 @WriteHSCX(%struct.hscx_hw* %282, i32 %283, i32 31)
  %285 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %286 = load i32, i32* @IPAC_MODEB, align 4
  %287 = call i32 @WriteHSCX(%struct.hscx_hw* %285, i32 %286, i32 132)
  %288 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %289 = load i32, i32* @IPAC_CCR1, align 4
  %290 = call i32 @WriteHSCX(%struct.hscx_hw* %288, i32 %289, i32 133)
  %291 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %292 = load i32, i32* @IPAC_MASKB, align 4
  %293 = call i32 @WriteHSCX(%struct.hscx_hw* %291, i32 %292, i32 255)
  %294 = load i32, i32* @FLG_HDLC, align 4
  %295 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %296 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 2
  %298 = call i32 @test_and_clear_bit(i32 %294, i32* %297)
  %299 = load i32, i32* @FLG_TRANSPARENT, align 4
  %300 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %301 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 2
  %303 = call i32 @test_and_clear_bit(i32 %299, i32* %302)
  br label %348

304:                                              ; preds = %252
  %305 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %306 = load i32, i32* @IPAC_MODEB, align 4
  %307 = call i32 @WriteHSCX(%struct.hscx_hw* %305, i32 %306, i32 228)
  %308 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %309 = load i32, i32* @IPAC_CCR1, align 4
  %310 = call i32 @WriteHSCX(%struct.hscx_hw* %308, i32 %309, i32 133)
  %311 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %312 = call i32 @hscx_cmdr(%struct.hscx_hw* %311, i32 65)
  %313 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %314 = load i32, i32* @IPAC_MASKB, align 4
  %315 = call i32 @WriteHSCX(%struct.hscx_hw* %313, i32 %314, i32 0)
  %316 = load i32, i32* @FLG_TRANSPARENT, align 4
  %317 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %318 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 2
  %320 = call i32 @test_and_set_bit(i32 %316, i32* %319)
  br label %348

321:                                              ; preds = %252
  %322 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %323 = load i32, i32* @IPAC_MODEB, align 4
  %324 = call i32 @WriteHSCX(%struct.hscx_hw* %322, i32 %323, i32 140)
  %325 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %326 = load i32, i32* @IPAC_CCR1, align 4
  %327 = call i32 @WriteHSCX(%struct.hscx_hw* %325, i32 %326, i32 141)
  %328 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %329 = call i32 @hscx_cmdr(%struct.hscx_hw* %328, i32 65)
  %330 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %331 = load i32, i32* @IPAC_MASKB, align 4
  %332 = call i32 @WriteHSCX(%struct.hscx_hw* %330, i32 %331, i32 0)
  %333 = load i32, i32* @FLG_HDLC, align 4
  %334 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %335 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %335, i32 0, i32 2
  %337 = call i32 @test_and_set_bit(i32 %333, i32* %336)
  br label %348

338:                                              ; preds = %252
  %339 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %340 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %339, i32 0, i32 2
  %341 = load %struct.TYPE_4__*, %struct.TYPE_4__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* %5, align 4
  %345 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %343, i32 %344)
  %346 = load i32, i32* @ENOPROTOOPT, align 4
  %347 = sub nsw i32 0, %346
  store i32 %347, i32* %3, align 4
  br label %359

348:                                              ; preds = %321, %304, %278
  br label %352

349:                                              ; preds = %243
  %350 = load i32, i32* @EINVAL, align 4
  %351 = sub nsw i32 0, %350
  store i32 %351, i32* %3, align 4
  br label %359

352:                                              ; preds = %348
  br label %353

353:                                              ; preds = %352, %242
  br label %354

354:                                              ; preds = %353, %136
  %355 = load i32, i32* %5, align 4
  %356 = load %struct.hscx_hw*, %struct.hscx_hw** %4, align 8
  %357 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %357, i32 0, i32 1
  store i32 %355, i32* %358, align 4
  store i32 0, i32* %3, align 4
  br label %359

359:                                              ; preds = %354, %349, %338, %232, %126
  %360 = load i32, i32* %3, align 4
  ret i32 %360
}

declare dso_local i32 @pr_debug(i8*, i32, i8 signext, i32, i32, i8 signext) #1

declare dso_local i32 @WriteIPAC(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @WriteHSCX(%struct.hscx_hw*, i32, i32) #1

declare dso_local i32 @hscx_cmdr(%struct.hscx_hw*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
