; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdmac.c_sh_dmae_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdmac.c_sh_dmae_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_dmae_device = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.sh_dmae_chan** }
%struct.TYPE_6__ = type { i32, i16, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sh_dmae_chan = type { i32 }

@sh_dmae_lock = common dso_local global i32 0, align 4
@DMAOR_NMIF = common dso_local global i16 0, align 2
@DMAOR_AE = common dso_local global i16 0, align 2
@DMAOR_DME = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [25 x i8] c"Can't initialize DMAOR.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"DMAOR=0x%x hasn't latched the initial value 0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_dmae_device*)* @sh_dmae_rst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_dmae_rst(%struct.sh_dmae_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_dmae_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh_dmae_chan*, align 8
  store %struct.sh_dmae_device* %0, %struct.sh_dmae_device** %3, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @sh_dmae_lock, i64 %8)
  %10 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %3, align 8
  %11 = call zeroext i16 @dmaor_read(%struct.sh_dmae_device* %10)
  %12 = zext i16 %11 to i32
  %13 = load i16, i16* @DMAOR_NMIF, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @DMAOR_AE, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %14, %16
  %18 = load i16, i16* @DMAOR_DME, align 2
  %19 = zext i16 %18 to i32
  %20 = or i32 %17, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %12, %21
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %4, align 2
  %24 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %3, align 8
  %25 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %53, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %3, align 8
  %34 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %31
  %40 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %3, align 8
  %41 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %40, i32 0, i32 2
  %42 = load %struct.sh_dmae_chan**, %struct.sh_dmae_chan*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %42, i64 %44
  %46 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %45, align 8
  store %struct.sh_dmae_chan* %46, %struct.sh_dmae_chan** %7, align 8
  %47 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %7, align 8
  %48 = icmp ne %struct.sh_dmae_chan* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %7, align 8
  %51 = call i32 @channel_clear(%struct.sh_dmae_chan* %50)
  br label %52

52:                                               ; preds = %49, %39
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %31

56:                                               ; preds = %31
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %3, align 8
  %59 = load i16, i16* %4, align 2
  %60 = zext i16 %59 to i32
  %61 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %3, align 8
  %62 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i16, i16* %64, align 4
  %66 = zext i16 %65 to i32
  %67 = or i32 %60, %66
  %68 = trunc i32 %67 to i16
  %69 = call i32 @dmaor_write(%struct.sh_dmae_device* %58, i16 zeroext %68)
  %70 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %3, align 8
  %71 = call zeroext i16 @dmaor_read(%struct.sh_dmae_device* %70)
  store i16 %71, i16* %4, align 2
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* @sh_dmae_lock, i64 %72)
  %74 = load i16, i16* %4, align 2
  %75 = zext i16 %74 to i32
  %76 = load i16, i16* @DMAOR_AE, align 2
  %77 = zext i16 %76 to i32
  %78 = load i16, i16* @DMAOR_NMIF, align 2
  %79 = zext i16 %78 to i32
  %80 = or i32 %77, %79
  %81 = and i32 %75, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %57
  %84 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %3, align 8
  %85 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, i8*, ...) @dev_warn(i32 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %120

92:                                               ; preds = %57
  %93 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %3, align 8
  %94 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i16, i16* %96, align 4
  %98 = zext i16 %97 to i32
  %99 = load i16, i16* %4, align 2
  %100 = zext i16 %99 to i32
  %101 = xor i32 %100, -1
  %102 = and i32 %98, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %92
  %105 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %3, align 8
  %106 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i16, i16* %4, align 2
  %111 = zext i16 %110 to i32
  %112 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %3, align 8
  %113 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i16, i16* %115, align 4
  %117 = zext i16 %116 to i32
  %118 = call i32 (i32, i8*, ...) @dev_warn(i32 %109, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %117)
  br label %119

119:                                              ; preds = %104, %92
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %83
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i16 @dmaor_read(%struct.sh_dmae_device*) #1

declare dso_local i32 @channel_clear(%struct.sh_dmae_chan*) #1

declare dso_local i32 @dmaor_write(%struct.sh_dmae_device*, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
