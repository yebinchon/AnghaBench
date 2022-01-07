; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_ni_mc_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_ni_mc_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@barts_io_mc_regs = common dso_local global i32 0, align 4
@BTC_MC_UCODE_SIZE = common dso_local global i32 0, align 4
@BTC_IO_MC_REGS_SIZE = common dso_local global i32 0, align 4
@turks_io_mc_regs = common dso_local global i32 0, align 4
@caicos_io_mc_regs = common dso_local global i32 0, align 4
@cayman_io_mc_regs = common dso_local global i32 0, align 4
@CAYMAN_MC_UCODE_SIZE = common dso_local global i32 0, align 4
@MC_SEQ_MISC0 = common dso_local global i32 0, align 4
@MC_SEQ_MISC0_GDDR5_MASK = common dso_local global i32 0, align 4
@MC_SEQ_MISC0_GDDR5_SHIFT = common dso_local global i32 0, align 4
@MC_SEQ_SUP_CNTL = common dso_local global i32 0, align 4
@RUN_MASK = common dso_local global i32 0, align 4
@MC_SEQ_MISC0_GDDR5_VALUE = common dso_local global i32 0, align 4
@MC_SHARED_BLACKOUT_CNTL = common dso_local global i32 0, align 4
@MC_SEQ_IO_DEBUG_INDEX = common dso_local global i32 0, align 4
@MC_SEQ_IO_DEBUG_DATA = common dso_local global i32 0, align 4
@MC_SEQ_SUP_PGM = common dso_local global i32 0, align 4
@MC_IO_PAD_CNTL_D0 = common dso_local global i32 0, align 4
@MEM_FALL_OUT_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_mc_load_microcode(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %146

19:                                               ; preds = %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %30 [
    i32 131, label %23
    i32 128, label %26
    i32 130, label %29
    i32 129, label %33
  ]

23:                                               ; preds = %19
  store i32* @barts_io_mc_regs, i32** %8, align 8
  %24 = load i32, i32* @BTC_MC_UCODE_SIZE, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @BTC_IO_MC_REGS_SIZE, align 4
  store i32 %25, i32* %11, align 4
  br label %36

26:                                               ; preds = %19
  store i32* @turks_io_mc_regs, i32** %8, align 8
  %27 = load i32, i32* @BTC_MC_UCODE_SIZE, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @BTC_IO_MC_REGS_SIZE, align 4
  store i32 %28, i32* %11, align 4
  br label %36

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %19, %29
  store i32* @caicos_io_mc_regs, i32** %8, align 8
  %31 = load i32, i32* @BTC_MC_UCODE_SIZE, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @BTC_IO_MC_REGS_SIZE, align 4
  store i32 %32, i32* %11, align 4
  br label %36

33:                                               ; preds = %19
  store i32* @cayman_io_mc_regs, i32** %8, align 8
  %34 = load i32, i32* @CAYMAN_MC_UCODE_SIZE, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @BTC_IO_MC_REGS_SIZE, align 4
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %33, %30, %26, %23
  %37 = load i32, i32* @MC_SEQ_MISC0, align 4
  %38 = call i32 @RREG32(i32 %37)
  %39 = load i32, i32* @MC_SEQ_MISC0_GDDR5_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @MC_SEQ_MISC0_GDDR5_SHIFT, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %44 = call i32 @RREG32(i32 %43)
  %45 = load i32, i32* @RUN_MASK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @MC_SEQ_MISC0_GDDR5_VALUE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %145

50:                                               ; preds = %36
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %145

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* @MC_SHARED_BLACKOUT_CNTL, align 4
  %58 = call i32 @RREG32(i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @MC_SHARED_BLACKOUT_CNTL, align 4
  %60 = call i32 @WREG32(i32 %59, i32 1)
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %63 = call i32 @WREG32(i32 %62, i32 8)
  %64 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %65 = call i32 @WREG32(i32 %64, i32 16)
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %88, %61
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %66
  %71 = load i32, i32* @MC_SEQ_IO_DEBUG_INDEX, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = shl i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @WREG32(i32 %71, i32 %77)
  %79 = load i32, i32* @MC_SEQ_IO_DEBUG_DATA, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = shl i32 %81, 1
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @WREG32(i32 %79, i32 %86)
  br label %88

88:                                               ; preds = %70
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %66

91:                                               ; preds = %66
  %92 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i32*
  store i32* %97, i32** %4, align 8
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %109, %91
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load i32, i32* @MC_SEQ_SUP_PGM, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %4, align 8
  %106 = ptrtoint i32* %104 to i32
  %107 = call i32 @be32_to_cpup(i32 %106)
  %108 = call i32 @WREG32(i32 %103, i32 %107)
  br label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %98

112:                                              ; preds = %98
  %113 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %114 = call i32 @WREG32(i32 %113, i32 8)
  %115 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %116 = call i32 @WREG32(i32 %115, i32 4)
  %117 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %118 = call i32 @WREG32(i32 %117, i32 1)
  store i32 0, i32* %9, align 4
  br label %119

119:                                              ; preds = %134, %112
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %119
  %126 = load i32, i32* @MC_IO_PAD_CNTL_D0, align 4
  %127 = call i32 @RREG32(i32 %126)
  %128 = load i32, i32* @MEM_FALL_OUT_CMD, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %137

132:                                              ; preds = %125
  %133 = call i32 @udelay(i32 1)
  br label %134

134:                                              ; preds = %132
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %119

137:                                              ; preds = %131, %119
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* @MC_SHARED_BLACKOUT_CNTL, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @WREG32(i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %137
  br label %145

145:                                              ; preds = %144, %50, %36
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %145, %16
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
