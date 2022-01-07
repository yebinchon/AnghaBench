; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_netjet.c_setup_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_netjet.c_setup_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiger_hw = type { i32, %struct.TYPE_13__*, %struct.TYPE_14__, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i32*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.tiger_hw*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@MISDN_MAX_IDLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"netjet.%d\00", align 1
@nj_cnt = common dso_local global i32 0, align 4
@card_lock = common dso_local global i32 0, align 4
@Cards = common dso_local global i32 0, align 4
@ISDN_P_B_RAW = common dso_local global i32 0, align 4
@ISDN_P_B_MASK = common dso_local global i32 0, align 4
@ISDN_P_B_HDLC = common dso_local global i32 0, align 4
@nj_dctrl = common dso_local global i32 0, align 4
@MAX_DATA_MEM = common dso_local global i32 0, align 4
@NJ_DMA_RXSIZE = common dso_local global i32 0, align 4
@nj_l2l1B = common dso_local global i32 0, align 4
@nj_bctrl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Netjet %d cards installed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tiger_hw*)* @setup_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_instance(%struct.tiger_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tiger_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tiger_hw* %0, %struct.tiger_hw** %3, align 8
  %7 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %8 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i64, i64* @MISDN_MAX_IDLEN, align 8
  %11 = sub nsw i64 %10, 1
  %12 = load i32, i32* @nj_cnt, align 4
  %13 = add nsw i32 %12, 1
  %14 = call i32 @snprintf(i32 %9, i64 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @write_lock_irqsave(i32* @card_lock, i32 %15)
  %17 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %18 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %17, i32 0, i32 5
  %19 = call i32 @list_add_tail(i32* %18, i32* @Cards)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @write_unlock_irqrestore(i32* @card_lock, i32 %20)
  %22 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %23 = call i32 @_set_debug(%struct.tiger_hw* %22)
  %24 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %25 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %28 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %31 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %30, i32 0, i32 4
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %34 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %33, i32 0, i32 4
  %35 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %36 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  store i32* %34, i32** %37, align 8
  %38 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %39 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %38, i32 0, i32 2
  %40 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %41 = call i32 @mISDNisac_init(%struct.TYPE_14__* %39, %struct.tiger_hw* %40)
  %42 = load i32, i32* @ISDN_P_B_RAW, align 4
  %43 = load i32, i32* @ISDN_P_B_MASK, align 4
  %44 = and i32 %42, %43
  %45 = shl i32 1, %44
  %46 = load i32, i32* @ISDN_P_B_HDLC, align 4
  %47 = load i32, i32* @ISDN_P_B_MASK, align 4
  %48 = and i32 %46, %47
  %49 = shl i32 1, %48
  %50 = or i32 %45, %49
  %51 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %52 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 8
  %56 = load i32, i32* @nj_dctrl, align 4
  %57 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %58 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 %56, i32* %62, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %161, %1
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %164

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  %69 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %70 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %69, i32 0, i32 3
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  store i32 %68, i32* %76, align 8
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  %79 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %80 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @set_channelmap(i32 %78, i32 %84)
  %86 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %87 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %86, i32 0, i32 3
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* @MAX_DATA_MEM, align 4
  %94 = load i32, i32* @NJ_DMA_RXSIZE, align 4
  %95 = ashr i32 %94, 1
  %96 = call i32 @mISDN_initbchannel(%struct.TYPE_16__* %92, i32 %93, i32 %95)
  %97 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %98 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %99 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %98, i32 0, i32 3
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  store %struct.tiger_hw* %97, %struct.tiger_hw** %105, align 8
  %106 = load i32, i32* @nj_l2l1B, align 4
  %107 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %108 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %107, i32 0, i32 3
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 3
  store i32 %106, i32* %115, align 4
  %116 = load i32, i32* @nj_bctrl, align 4
  %117 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %118 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %117, i32 0, i32 3
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  store i32 %116, i32* %125, align 8
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  %128 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %129 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %128, i32 0, i32 3
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  store i32 %127, i32* %136, align 8
  %137 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %138 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %137, i32 0, i32 3
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %147 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = call i32 @list_add(i32* %145, i32* %150)
  %152 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %153 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %154 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %153, i32 0, i32 3
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  store %struct.tiger_hw* %152, %struct.tiger_hw** %160, align 8
  br label %161

161:                                              ; preds = %66
  %162 = load i32, i32* %4, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %4, align 4
  br label %63

164:                                              ; preds = %63
  %165 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %166 = call i32 @nj_setup(%struct.tiger_hw* %165)
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %5, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %197

170:                                              ; preds = %164
  %171 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %172 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %176 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %175, i32 0, i32 1
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %180 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @mISDN_register_device(%struct.TYPE_15__* %174, i32* %178, i32 %181)
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %170
  br label %197

186:                                              ; preds = %170
  %187 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %188 = call i32 @nj_init_card(%struct.tiger_hw* %187)
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %5, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = load i32, i32* @nj_cnt, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* @nj_cnt, align 4
  %194 = load i32, i32* @nj_cnt, align 4
  %195 = call i32 @pr_notice(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %194)
  store i32 0, i32* %2, align 4
  br label %201

196:                                              ; preds = %186
  br label %197

197:                                              ; preds = %196, %185, %169
  %198 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %199 = call i32 @nj_release(%struct.tiger_hw* %198)
  %200 = load i32, i32* %5, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %197, %191
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32 @snprintf(i32, i64, i8*, i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @_set_debug(%struct.tiger_hw*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mISDNisac_init(%struct.TYPE_14__*, %struct.tiger_hw*) #1

declare dso_local i32 @set_channelmap(i32, i32) #1

declare dso_local i32 @mISDN_initbchannel(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @nj_setup(%struct.tiger_hw*) #1

declare dso_local i32 @mISDN_register_device(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @nj_init_card(%struct.tiger_hw*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @nj_release(%struct.tiger_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
