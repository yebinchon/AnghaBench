; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_priv_xfers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_priv_xfers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_dev_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i3c_priv_xfer = type { i64, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.i3c_master_controller = type { i32 }
%struct.cdns_i3c_master = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.cdns_i3c_xfer = type { i32, %struct.cdns_i3c_cmd*, i32 }
%struct.cdns_i3c_cmd = type { i32, i64, i64, i32, i32 }

@CMD0_FIFO_PL_LEN_MAX = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XMIT_BURST_WITHOUT_SUBADDR = common dso_local global i32 0, align 4
@CMD0_FIFO_RNW = common dso_local global i32 0, align 4
@CMD0_FIFO_RSBC = common dso_local global i32 0, align 4
@CMD0_FIFO_BCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_dev_desc*, %struct.i3c_priv_xfer*, i32)* @cdns_i3c_master_priv_xfers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_i3c_master_priv_xfers(%struct.i3c_dev_desc* %0, %struct.i3c_priv_xfer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i3c_dev_desc*, align 8
  %6 = alloca %struct.i3c_priv_xfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i3c_master_controller*, align 8
  %9 = alloca %struct.cdns_i3c_master*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cdns_i3c_xfer*, align 8
  %15 = alloca %struct.cdns_i3c_cmd*, align 8
  %16 = alloca i64, align 8
  store %struct.i3c_dev_desc* %0, %struct.i3c_dev_desc** %5, align 8
  store %struct.i3c_priv_xfer* %1, %struct.i3c_priv_xfer** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %5, align 8
  %18 = call %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc* %17)
  store %struct.i3c_master_controller* %18, %struct.i3c_master_controller** %8, align 8
  %19 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %8, align 8
  %20 = call %struct.cdns_i3c_master* @to_cdns_i3c_master(%struct.i3c_master_controller* %19)
  store %struct.cdns_i3c_master* %20, %struct.cdns_i3c_master** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %38, %3
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load %struct.i3c_priv_xfer*, %struct.i3c_priv_xfer** %6, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %26, i64 %28
  %30 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CMD0_FIFO_PL_LEN_MAX, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %278

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %12, align 4
  br label %21

41:                                               ; preds = %21
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %278

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %9, align 8
  %48 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %46, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %9, align 8
  %55 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %53, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %52, %45
  %60 = load i32, i32* @ENOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %278

62:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %100, %62
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %103

67:                                               ; preds = %63
  %68 = load %struct.i3c_priv_xfer*, %struct.i3c_priv_xfer** %6, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %68, i64 %70
  %72 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %67
  %76 = load %struct.i3c_priv_xfer*, %struct.i3c_priv_xfer** %6, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %76, i64 %78
  %80 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @DIV_ROUND_UP(i64 %81, i32 4)
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %11, align 4
  br label %99

87:                                               ; preds = %67
  %88 = load %struct.i3c_priv_xfer*, %struct.i3c_priv_xfer** %6, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %88, i64 %90
  %92 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @DIV_ROUND_UP(i64 %93, i32 4)
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %87, %75
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %63

103:                                              ; preds = %63
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %9, align 8
  %106 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %104, %108
  br i1 %109, label %117, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %9, align 8
  %113 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %111, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %110, %103
  %118 = load i32, i32* @ENOTSUPP, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %278

120:                                              ; preds = %110
  %121 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %9, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call %struct.cdns_i3c_xfer* @cdns_i3c_master_alloc_xfer(%struct.cdns_i3c_master* %121, i32 %122)
  store %struct.cdns_i3c_xfer* %123, %struct.cdns_i3c_xfer** %14, align 8
  %124 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %14, align 8
  %125 = icmp ne %struct.cdns_i3c_xfer* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %278

129:                                              ; preds = %120
  store i32 0, i32* %12, align 4
  br label %130

130:                                              ; preds = %234, %129
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %237

134:                                              ; preds = %130
  %135 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %14, align 8
  %136 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %135, i32 0, i32 1
  %137 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %137, i64 %139
  store %struct.cdns_i3c_cmd* %140, %struct.cdns_i3c_cmd** %15, align 8
  %141 = load %struct.i3c_priv_xfer*, %struct.i3c_priv_xfer** %6, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %141, i64 %143
  %145 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %16, align 8
  %147 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %5, align 8
  %148 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @CMD0_FIFO_DEV_ADDR(i32 %150)
  %152 = load i32, i32* @XMIT_BURST_WITHOUT_SUBADDR, align 4
  %153 = call i32 @CMD0_FIFO_PRIV_XMIT_MODE(i32 %152)
  %154 = or i32 %151, %153
  %155 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %15, align 8
  %156 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.i3c_priv_xfer*, %struct.i3c_priv_xfer** %6, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %157, i64 %159
  %161 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %189

164:                                              ; preds = %134
  %165 = load i32, i32* @CMD0_FIFO_RNW, align 4
  %166 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %15, align 8
  %167 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 8
  %170 = load %struct.i3c_priv_xfer*, %struct.i3c_priv_xfer** %6, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %170, i64 %172
  %174 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %15, align 8
  %178 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 4
  %179 = load %struct.i3c_priv_xfer*, %struct.i3c_priv_xfer** %6, align 8
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %179, i64 %181
  %183 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %15, align 8
  %186 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %185, i32 0, i32 1
  store i64 %184, i64* %186, align 8
  %187 = load i64, i64* %16, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %16, align 8
  br label %207

189:                                              ; preds = %134
  %190 = load %struct.i3c_priv_xfer*, %struct.i3c_priv_xfer** %6, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %190, i64 %192
  %194 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %15, align 8
  %198 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 8
  %199 = load %struct.i3c_priv_xfer*, %struct.i3c_priv_xfer** %6, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %199, i64 %201
  %203 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %15, align 8
  %206 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %205, i32 0, i32 2
  store i64 %204, i64* %206, align 8
  br label %207

207:                                              ; preds = %189, %164
  %208 = load i64, i64* %16, align 8
  %209 = call i32 @CMD0_FIFO_PL_LEN(i64 %208)
  %210 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %15, align 8
  %211 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %209
  store i32 %213, i32* %211, align 8
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* %7, align 4
  %216 = sub nsw i32 %215, 1
  %217 = icmp slt i32 %214, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %207
  %219 = load i32, i32* @CMD0_FIFO_RSBC, align 4
  %220 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %15, align 8
  %221 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 8
  br label %224

224:                                              ; preds = %218, %207
  %225 = load i32, i32* %12, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %224
  %228 = load i32, i32* @CMD0_FIFO_BCH, align 4
  %229 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %15, align 8
  %230 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %227, %224
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %12, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %12, align 4
  br label %130

237:                                              ; preds = %130
  %238 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %9, align 8
  %239 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %14, align 8
  %240 = call i32 @cdns_i3c_master_queue_xfer(%struct.cdns_i3c_master* %238, %struct.cdns_i3c_xfer* %239)
  %241 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %14, align 8
  %242 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %241, i32 0, i32 2
  %243 = call i32 @msecs_to_jiffies(i32 1000)
  %244 = call i32 @wait_for_completion_timeout(i32* %242, i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %237
  %247 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %9, align 8
  %248 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %14, align 8
  %249 = call i32 @cdns_i3c_master_unqueue_xfer(%struct.cdns_i3c_master* %247, %struct.cdns_i3c_xfer* %248)
  br label %250

250:                                              ; preds = %246, %237
  %251 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %14, align 8
  %252 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  store i32 %253, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %254

254:                                              ; preds = %271, %250
  %255 = load i32, i32* %12, align 4
  %256 = load i32, i32* %7, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %274

258:                                              ; preds = %254
  %259 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %14, align 8
  %260 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %259, i32 0, i32 1
  %261 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %260, align 8
  %262 = load i32, i32* %12, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %261, i64 %263
  %265 = call i32 @cdns_i3c_cmd_get_err(%struct.cdns_i3c_cmd* %264)
  %266 = load %struct.i3c_priv_xfer*, %struct.i3c_priv_xfer** %6, align 8
  %267 = load i32, i32* %12, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %266, i64 %268
  %270 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %269, i32 0, i32 1
  store i32 %265, i32* %270, align 8
  br label %271

271:                                              ; preds = %258
  %272 = load i32, i32* %12, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %12, align 4
  br label %254

274:                                              ; preds = %254
  %275 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %14, align 8
  %276 = call i32 @cdns_i3c_master_free_xfer(%struct.cdns_i3c_xfer* %275)
  %277 = load i32, i32* %13, align 4
  store i32 %277, i32* %4, align 4
  br label %278

278:                                              ; preds = %274, %126, %117, %59, %44, %34
  %279 = load i32, i32* %4, align 4
  ret i32 %279
}

declare dso_local %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc*) #1

declare dso_local %struct.cdns_i3c_master* @to_cdns_i3c_master(%struct.i3c_master_controller*) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local %struct.cdns_i3c_xfer* @cdns_i3c_master_alloc_xfer(%struct.cdns_i3c_master*, i32) #1

declare dso_local i32 @CMD0_FIFO_DEV_ADDR(i32) #1

declare dso_local i32 @CMD0_FIFO_PRIV_XMIT_MODE(i32) #1

declare dso_local i32 @CMD0_FIFO_PL_LEN(i64) #1

declare dso_local i32 @cdns_i3c_master_queue_xfer(%struct.cdns_i3c_master*, %struct.cdns_i3c_xfer*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cdns_i3c_master_unqueue_xfer(%struct.cdns_i3c_master*, %struct.cdns_i3c_xfer*) #1

declare dso_local i32 @cdns_i3c_cmd_get_err(%struct.cdns_i3c_cmd*) #1

declare dso_local i32 @cdns_i3c_master_free_xfer(%struct.cdns_i3c_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
