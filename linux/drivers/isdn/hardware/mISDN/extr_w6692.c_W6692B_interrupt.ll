; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692B_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692B_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_hw = type { i32, %struct.w6692_ch* }
%struct.w6692_ch = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32, i32, i32, i64, i32, i32 }

@W_B_EXIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: B%d EXIR %02x\0A\00", align 1
@W_B_EXI_RME = common dso_local global i32 0, align 4
@W_B_STAR = common dso_local global i32 0, align 4
@W_B_STAR_RDOV = common dso_local global i32 0, align 4
@W_B_STAR_CRCE = common dso_local global i32 0, align 4
@W_B_STAR_RMB = common dso_local global i32 0, align 4
@FLG_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: B%d RDOV proto=%x\0A\00", align 1
@FLG_HDLC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: B%d CRC error\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s: B%d message abort\0A\00", align 1
@W_B_CMDR = common dso_local global i32 0, align 4
@W_B_CMDR_RACK = common dso_local global i32 0, align 4
@W_B_CMDR_RRST = common dso_local global i32 0, align 4
@W_B_CMDR_RACT = common dso_local global i32 0, align 4
@W_B_RBCL = common dso_local global i32 0, align 4
@W_B_FIFO_THRESH = common dso_local global i32 0, align 4
@W_B_EXI_RMR = common dso_local global i32 0, align 4
@FLG_TRANSPARENT = common dso_local global i32 0, align 4
@W_B_EXI_RDOV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: B%d RDOV IRQ proto=%x\0A\00", align 1
@W_B_EXI_XFR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"%s: B%d star %02x\0A\00", align 1
@W_B_STAR_XDOW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"%s: B%d XDOW proto=%x\0A\00", align 1
@W_B_CMDR_XRST = common dso_local global i32 0, align 4
@W_B_EXI_XDUN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"%s: B%d XDUN proto=%x\0A\00", align 1
@FLG_FILLEMPTY = common dso_local global i32 0, align 4
@FLG_TX_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w6692_hw*, i32)* @W6692B_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @W6692B_interrupt(%struct.w6692_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.w6692_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.w6692_ch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.w6692_hw* %0, %struct.w6692_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %10 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %9, i32 0, i32 1
  %11 = load %struct.w6692_ch*, %struct.w6692_ch** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %11, i64 %13
  store %struct.w6692_ch* %14, %struct.w6692_ch** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %16 = load i32, i32* @W_B_EXIR, align 4
  %17 = call i32 @ReadW6692B(%struct.w6692_ch* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %19 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %22 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @W_B_EXI_RME, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %144

31:                                               ; preds = %2
  %32 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %33 = load i32, i32* @W_B_STAR, align 4
  %34 = call i32 @ReadW6692B(%struct.w6692_ch* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @W_B_STAR_RDOV, align 4
  %37 = load i32, i32* @W_B_STAR_CRCE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @W_B_STAR_RMB, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %35, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %125

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @W_B_STAR_RDOV, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %43
  %49 = load i32, i32* @FLG_ACTIVE, align 4
  %50 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %51 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = call i64 @test_bit(i32 %49, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %57 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %60 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %64 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %55, %48, %43
  %69 = load i32, i32* @FLG_HDLC, align 4
  %70 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %71 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = call i64 @test_bit(i32 %69, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %68
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @W_B_STAR_CRCE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %82 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %85 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %87)
  br label %89

89:                                               ; preds = %80, %75
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @W_B_STAR_RMB, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %96 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %99 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %97, i32 %101)
  br label %103

103:                                              ; preds = %94, %89
  br label %104

104:                                              ; preds = %103, %68
  %105 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %106 = load i32, i32* @W_B_CMDR, align 4
  %107 = load i32, i32* @W_B_CMDR_RACK, align 4
  %108 = load i32, i32* @W_B_CMDR_RRST, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @W_B_CMDR_RACT, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @WriteW6692B(%struct.w6692_ch* %105, i32 %106, i32 %111)
  %113 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %114 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 7
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %104
  %119 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %120 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @skb_trim(i64 %122, i32 0)
  br label %124

124:                                              ; preds = %118, %104
  br label %143

125:                                              ; preds = %31
  %126 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %127 = load i32, i32* @W_B_RBCL, align 4
  %128 = call i32 @ReadW6692B(%struct.w6692_ch* %126, i32 %127)
  %129 = load i32, i32* @W_B_FIFO_THRESH, align 4
  %130 = sub nsw i32 %129, 1
  %131 = and i32 %128, %130
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = load i32, i32* @W_B_FIFO_THRESH, align 4
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %134, %125
  %137 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @W6692_empty_Bfifo(%struct.w6692_ch* %137, i32 %138)
  %140 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %141 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %140, i32 0, i32 0
  %142 = call i32 @recv_Bchannel(%struct.TYPE_2__* %141, i32 0, i32 0)
  br label %143

143:                                              ; preds = %136, %124
  br label %144

144:                                              ; preds = %143, %2
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @W_B_EXI_RMR, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %200

149:                                              ; preds = %144
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @W_B_EXI_RME, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %149
  %155 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %156 = load i32, i32* @W_B_STAR, align 4
  %157 = call i32 @ReadW6692B(%struct.w6692_ch* %155, i32 %156)
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %154, %149
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @W_B_STAR_RDOV, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %184

163:                                              ; preds = %158
  %164 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %165 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %168 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %172 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %166, i32 %170, i32 %174)
  %176 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %177 = load i32, i32* @W_B_CMDR, align 4
  %178 = load i32, i32* @W_B_CMDR_RACK, align 4
  %179 = load i32, i32* @W_B_CMDR_RRST, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @W_B_CMDR_RACT, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @WriteW6692B(%struct.w6692_ch* %176, i32 %177, i32 %182)
  br label %199

184:                                              ; preds = %158
  %185 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %186 = load i32, i32* @W_B_FIFO_THRESH, align 4
  %187 = call i32 @W6692_empty_Bfifo(%struct.w6692_ch* %185, i32 %186)
  %188 = load i32, i32* @FLG_TRANSPARENT, align 4
  %189 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %190 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = call i64 @test_bit(i32 %188, i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %184
  %195 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %196 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %195, i32 0, i32 0
  %197 = call i32 @recv_Bchannel(%struct.TYPE_2__* %196, i32 0, i32 0)
  br label %198

198:                                              ; preds = %194, %184
  br label %199

199:                                              ; preds = %198, %163
  br label %200

200:                                              ; preds = %199, %144
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* @W_B_EXI_RDOV, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %232

205:                                              ; preds = %200
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @W_B_STAR_RDOV, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %231, label %210

210:                                              ; preds = %205
  %211 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %212 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %215 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %219 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %213, i32 %217, i32 %221)
  %223 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %224 = load i32, i32* @W_B_CMDR, align 4
  %225 = load i32, i32* @W_B_CMDR_RACK, align 4
  %226 = load i32, i32* @W_B_CMDR_RRST, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @W_B_CMDR_RACT, align 4
  %229 = or i32 %227, %228
  %230 = call i32 @WriteW6692B(%struct.w6692_ch* %223, i32 %224, i32 %229)
  br label %231

231:                                              ; preds = %210, %205
  br label %232

232:                                              ; preds = %231, %200
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* @W_B_EXI_XFR, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %308

237:                                              ; preds = %232
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* @W_B_EXI_RME, align 4
  %240 = load i32, i32* @W_B_EXI_RMR, align 4
  %241 = or i32 %239, %240
  %242 = and i32 %238, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %257, label %244

244:                                              ; preds = %237
  %245 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %246 = load i32, i32* @W_B_STAR, align 4
  %247 = call i32 @ReadW6692B(%struct.w6692_ch* %245, i32 %246)
  store i32 %247, i32* %8, align 4
  %248 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %249 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %252 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %8, align 4
  %256 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %250, i32 %254, i32 %255)
  br label %257

257:                                              ; preds = %244, %237
  %258 = load i32, i32* %8, align 4
  %259 = load i32, i32* @W_B_STAR_XDOW, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %299

262:                                              ; preds = %257
  %263 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %264 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %267 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %271 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @pr_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %265, i32 %269, i32 %273)
  %275 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %276 = load i32, i32* @W_B_CMDR, align 4
  %277 = load i32, i32* @W_B_CMDR_XRST, align 4
  %278 = load i32, i32* @W_B_CMDR_RACT, align 4
  %279 = or i32 %277, %278
  %280 = call i32 @WriteW6692B(%struct.w6692_ch* %275, i32 %276, i32 %279)
  %281 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %282 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %298

286:                                              ; preds = %262
  %287 = load i32, i32* @FLG_TRANSPARENT, align 4
  %288 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %289 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 1
  %291 = call i64 @test_bit(i32 %287, i32* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %297, label %293

293:                                              ; preds = %286
  %294 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %295 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 2
  store i64 0, i64* %296, align 8
  br label %297

297:                                              ; preds = %293, %286
  br label %298

298:                                              ; preds = %297, %262
  br label %299

299:                                              ; preds = %298, %257
  %300 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %301 = call i32 @send_next(%struct.w6692_ch* %300)
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* @W_B_STAR_XDOW, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %299
  br label %360

307:                                              ; preds = %299
  br label %308

308:                                              ; preds = %307, %232
  %309 = load i32, i32* %7, align 4
  %310 = load i32, i32* @W_B_EXI_XDUN, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %360

313:                                              ; preds = %308
  %314 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %315 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %318 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %322 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @pr_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %316, i32 %320, i32 %324)
  %326 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %327 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 3
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %343

331:                                              ; preds = %313
  %332 = load i32, i32* @FLG_TRANSPARENT, align 4
  %333 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %334 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 1
  %336 = call i64 @test_bit(i32 %332, i32* %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %342, label %338

338:                                              ; preds = %331
  %339 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %340 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i32 0, i32 2
  store i64 0, i64* %341, align 8
  br label %342

342:                                              ; preds = %338, %331
  br label %357

343:                                              ; preds = %313
  %344 = load i32, i32* @FLG_FILLEMPTY, align 4
  %345 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %346 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 1
  %348 = call i64 @test_bit(i32 %344, i32* %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %343
  %351 = load i32, i32* @FLG_TX_EMPTY, align 4
  %352 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %353 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i32 0, i32 1
  %355 = call i32 @test_and_set_bit(i32 %351, i32* %354)
  br label %356

356:                                              ; preds = %350, %343
  br label %357

357:                                              ; preds = %356, %342
  %358 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %359 = call i32 @send_next(%struct.w6692_ch* %358)
  br label %360

360:                                              ; preds = %306, %357, %308
  ret void
}

declare dso_local i32 @ReadW6692B(%struct.w6692_ch*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @WriteW6692B(%struct.w6692_ch*, i32, i32) #1

declare dso_local i32 @skb_trim(i64, i32) #1

declare dso_local i32 @W6692_empty_Bfifo(%struct.w6692_ch*, i32) #1

declare dso_local i32 @recv_Bchannel(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @pr_warning(i8*, i32, i32, i32) #1

declare dso_local i32 @send_next(%struct.w6692_ch*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
