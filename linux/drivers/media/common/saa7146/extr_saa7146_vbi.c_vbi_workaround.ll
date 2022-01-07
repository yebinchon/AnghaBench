; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_vbi.c_vbi_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_vbi.c_vbi_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.saa7146_vv* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.saa7146_vv = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dev:%p\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BASE_EVEN3 = common dso_local global i32 0, align 4
@BASE_ODD3 = common dso_local global i32 0, align 4
@vbi_pixel_to_capture = common dso_local global i32 0, align 4
@PROT_ADDR3 = common dso_local global i32 0, align 4
@PITCH3 = common dso_local global i32 0, align 4
@BASE_PAGE3 = common dso_local global i32 0, align 4
@NUM_LINE_BYTE3 = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_04 = common dso_local global i32 0, align 4
@MASK_20 = common dso_local global i32 0, align 4
@CMD_WR_REG = common dso_local global i32 0, align 4
@BRS_CTRL = common dso_local global i32 0, align 4
@SAA7146_USE_PORT_B_FOR_VBI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"...using port b\0A\00", align 1
@CMD_PAUSE = common dso_local global i32 0, align 4
@CMD_OAN = common dso_local global i32 0, align 4
@CMD_SIG1 = common dso_local global i32 0, align 4
@CMD_E_FID_B = common dso_local global i32 0, align 4
@CMD_O_FID_B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"...using port a\0A\00", align 1
@MASK_10 = common dso_local global i32 0, align 4
@CMD_UPLOAD = common dso_local global i32 0, align 4
@MASK_08 = common dso_local global i32 0, align 4
@MASK_19 = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@CMD_INTERRUPT = common dso_local global i32 0, align 4
@CMD_STOP = common dso_local global i32 0, align 4
@MASK_31 = common dso_local global i32 0, align 4
@MASK_15 = common dso_local global i32 0, align 4
@MASK_28 = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@RPS_ADDR1 = common dso_local global i32 0, align 4
@MASK_13 = common dso_local global i32 0, align 4
@MASK_29 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"brs bug workaround %d/1\0A\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"aborted (rps:0x%08x)\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*)* @vbi_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbi_workaround(%struct.saa7146_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.saa7146_vv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %10 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %9, i32 0, i32 3
  %11 = load %struct.saa7146_vv*, %struct.saa7146_vv** %10, align 8
  store %struct.saa7146_vv* %11, %struct.saa7146_vv** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @wait, align 4
  %13 = load i32, i32* @current, align 4
  %14 = call i32 @DECLARE_WAITQUEUE(i32 %12, i32 %13)
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %16 = call i32 (i8*, ...) @DEB_VBI(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %15)
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %18 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @pci_alloc_consistent(i32 %19, i32 4096, i32* %6)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* null, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %251

26:                                               ; preds = %1
  %27 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %28 = load i32, i32* @BASE_EVEN3, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @saa7146_write(%struct.saa7146_dev* %27, i32 %28, i32 %29)
  %31 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %32 = load i32, i32* @BASE_ODD3, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @vbi_pixel_to_capture, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i32 @saa7146_write(%struct.saa7146_dev* %31, i32 %32, i32 %35)
  %37 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %38 = load i32, i32* @PROT_ADDR3, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 4096
  %41 = call i32 @saa7146_write(%struct.saa7146_dev* %37, i32 %38, i32 %40)
  %42 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %43 = load i32, i32* @PITCH3, align 4
  %44 = load i32, i32* @vbi_pixel_to_capture, align 4
  %45 = call i32 @saa7146_write(%struct.saa7146_dev* %42, i32 %43, i32 %44)
  %46 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %47 = load i32, i32* @BASE_PAGE3, align 4
  %48 = call i32 @saa7146_write(%struct.saa7146_dev* %46, i32 %47, i32 0)
  %49 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %50 = load i32, i32* @NUM_LINE_BYTE3, align 4
  %51 = load i32, i32* @vbi_pixel_to_capture, align 4
  %52 = shl i32 %51, 0
  %53 = or i32 131072, %52
  %54 = call i32 @saa7146_write(%struct.saa7146_dev* %49, i32 %50, i32 %53)
  %55 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %56 = load i32, i32* @MC2, align 4
  %57 = load i32, i32* @MASK_04, align 4
  %58 = load i32, i32* @MASK_20, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @saa7146_write(%struct.saa7146_dev* %55, i32 %56, i32 %59)
  %61 = load i32, i32* @CMD_WR_REG, align 4
  %62 = or i32 %61, 256
  %63 = load i32, i32* @BRS_CTRL, align 4
  %64 = sdiv i32 %63, 4
  %65 = or i32 %62, %64
  %66 = call i32 @WRITE_RPS1(i32 %65)
  %67 = call i32 @WRITE_RPS1(i32 -1073741684)
  %68 = load i32, i32* @SAA7146_USE_PORT_B_FOR_VBI, align 4
  %69 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %70 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %68, %73
  %75 = icmp ne i32 0, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %26
  %77 = call i32 @DEB_D(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @CMD_PAUSE, align 4
  %79 = load i32, i32* @CMD_OAN, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @CMD_SIG1, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @CMD_E_FID_B, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @WRITE_RPS1(i32 %84)
  %86 = load i32, i32* @CMD_PAUSE, align 4
  %87 = load i32, i32* @CMD_OAN, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @CMD_SIG1, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @CMD_O_FID_B, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @WRITE_RPS1(i32 %92)
  br label %100

94:                                               ; preds = %26
  %95 = call i32 @DEB_D(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* @CMD_PAUSE, align 4
  %97 = load i32, i32* @MASK_10, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @WRITE_RPS1(i32 %98)
  br label %100

100:                                              ; preds = %94, %76
  %101 = load i32, i32* @CMD_UPLOAD, align 4
  %102 = load i32, i32* @MASK_08, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @WRITE_RPS1(i32 %103)
  %105 = load i32, i32* @CMD_WR_REG, align 4
  %106 = or i32 %105, 256
  %107 = load i32, i32* @BRS_CTRL, align 4
  %108 = sdiv i32 %107, 4
  %109 = or i32 %106, %108
  %110 = call i32 @WRITE_RPS1(i32 %109)
  %111 = load i32, i32* @vbi_pixel_to_capture, align 4
  %112 = sub nsw i32 1728, %111
  %113 = shl i32 %112, 7
  %114 = load i32, i32* @MASK_19, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @WRITE_RPS1(i32 %115)
  %117 = load i32, i32* @CMD_PAUSE, align 4
  %118 = load i32, i32* @MASK_08, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @WRITE_RPS1(i32 %119)
  %121 = load i32, i32* @CMD_UPLOAD, align 4
  %122 = load i32, i32* @MASK_08, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @WRITE_RPS1(i32 %123)
  %125 = load i32, i32* @CMD_WR_REG, align 4
  %126 = or i32 %125, 256
  %127 = load i32, i32* @NUM_LINE_BYTE3, align 4
  %128 = sdiv i32 %127, 4
  %129 = or i32 %126, %128
  %130 = call i32 @WRITE_RPS1(i32 %129)
  %131 = load i32, i32* @vbi_pixel_to_capture, align 4
  %132 = or i32 131072, %131
  %133 = call i32 @WRITE_RPS1(i32 %132)
  %134 = load i32, i32* @CMD_WR_REG, align 4
  %135 = or i32 %134, 256
  %136 = load i32, i32* @BRS_CTRL, align 4
  %137 = sdiv i32 %136, 4
  %138 = or i32 %135, %137
  %139 = call i32 @WRITE_RPS1(i32 %138)
  %140 = call i32 @WRITE_RPS1(i32 2690560)
  %141 = load i32, i32* @CMD_PAUSE, align 4
  %142 = load i32, i32* @MASK_08, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @WRITE_RPS1(i32 %143)
  %145 = load i32, i32* @CMD_UPLOAD, align 4
  %146 = load i32, i32* @MASK_08, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @MASK_04, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @WRITE_RPS1(i32 %149)
  %151 = load i32, i32* @CMD_WR_REG, align 4
  %152 = or i32 %151, 256
  %153 = load i32, i32* @MC1, align 4
  %154 = sdiv i32 %153, 4
  %155 = or i32 %152, %154
  %156 = call i32 @WRITE_RPS1(i32 %155)
  %157 = load i32, i32* @MASK_20, align 4
  %158 = load i32, i32* @MASK_04, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @WRITE_RPS1(i32 %159)
  %161 = load i32, i32* @CMD_INTERRUPT, align 4
  %162 = call i32 @WRITE_RPS1(i32 %161)
  %163 = load i32, i32* @CMD_STOP, align 4
  %164 = call i32 @WRITE_RPS1(i32 %163)
  store i32 0, i32* %8, align 4
  br label %165

165:                                              ; preds = %241, %100
  %166 = load i32, i32* %8, align 4
  %167 = icmp slt i32 %166, 2
  br i1 %167, label %168, label %244

168:                                              ; preds = %165
  %169 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %170 = load i32, i32* @MC2, align 4
  %171 = load i32, i32* @MASK_31, align 4
  %172 = load i32, i32* @MASK_15, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @saa7146_write(%struct.saa7146_dev* %169, i32 %170, i32 %173)
  %175 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %176 = load i32, i32* @NUM_LINE_BYTE3, align 4
  %177 = call i32 @saa7146_write(%struct.saa7146_dev* %175, i32 %176, i32 65538)
  %178 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %179 = load i32, i32* @MC2, align 4
  %180 = load i32, i32* @MASK_04, align 4
  %181 = load i32, i32* @MASK_20, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @saa7146_write(%struct.saa7146_dev* %178, i32 %179, i32 %182)
  %184 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %185 = load i32, i32* @MASK_28, align 4
  %186 = call i32 @SAA7146_IER_ENABLE(%struct.saa7146_dev* %184, i32 %185)
  %187 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %188 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %187, i32 0, i32 0
  %189 = call i32 @add_wait_queue(i32* %188, i32* @wait)
  %190 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %191 = call i32 @set_current_state(i32 %190)
  %192 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %193 = load i32, i32* @RPS_ADDR1, align 4
  %194 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %195 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @saa7146_write(%struct.saa7146_dev* %192, i32 %193, i32 %197)
  %199 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %200 = load i32, i32* @MC1, align 4
  %201 = load i32, i32* @MASK_13, align 4
  %202 = load i32, i32* @MASK_29, align 4
  %203 = or i32 %201, %202
  %204 = call i32 @saa7146_write(%struct.saa7146_dev* %199, i32 %200, i32 %203)
  %205 = call i32 (...) @schedule()
  %206 = load i32, i32* %8, align 4
  %207 = call i32 (i8*, ...) @DEB_VBI(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %206)
  %208 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %209 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %208, i32 0, i32 0
  %210 = call i32 @remove_wait_queue(i32* %209, i32* @wait)
  %211 = load i32, i32* @TASK_RUNNING, align 4
  %212 = call i32 @__set_current_state(i32 %211)
  %213 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %214 = load i32, i32* @MASK_28, align 4
  %215 = call i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev* %213, i32 %214)
  %216 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %217 = load i32, i32* @MC1, align 4
  %218 = load i32, i32* @MASK_20, align 4
  %219 = call i32 @saa7146_write(%struct.saa7146_dev* %216, i32 %217, i32 %218)
  %220 = load i32, i32* @current, align 4
  %221 = call i64 @signal_pending(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %240

223:                                              ; preds = %168
  %224 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %225 = load i32, i32* @RPS_ADDR1, align 4
  %226 = call i32 @saa7146_read(%struct.saa7146_dev* %224, i32 %225)
  %227 = call i32 (i8*, ...) @DEB_VBI(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %226)
  %228 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %229 = load i32, i32* @MC1, align 4
  %230 = load i32, i32* @MASK_29, align 4
  %231 = call i32 @saa7146_write(%struct.saa7146_dev* %228, i32 %229, i32 %230)
  %232 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %233 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32*, i32** %5, align 8
  %236 = load i32, i32* %6, align 4
  %237 = call i32 @pci_free_consistent(i32 %234, i32 4096, i32* %235, i32 %236)
  %238 = load i32, i32* @EINTR, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %2, align 4
  br label %251

240:                                              ; preds = %168
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %8, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %8, align 4
  br label %165

244:                                              ; preds = %165
  %245 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %246 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32*, i32** %5, align 8
  %249 = load i32, i32* %6, align 4
  %250 = call i32 @pci_free_consistent(i32 %247, i32 4096, i32* %248, i32 %249)
  store i32 0, i32* %2, align 4
  br label %251

251:                                              ; preds = %244, %223, %23
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @DEB_VBI(i8*, ...) #1

declare dso_local i32* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @WRITE_RPS1(i32) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @SAA7146_IER_ENABLE(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev*, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @saa7146_read(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
