; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_initW6692.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_initW6692.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_hw = type { i32, i64, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@dbusy_timer_handler = common dso_local global i32 0, align 4
@ISDN_P_NONE = common dso_local global i32 0, align 4
@W_D_CTL = common dso_local global i32 0, align 4
@W_D_SAM = common dso_local global i32 0, align 4
@W_D_TAM = common dso_local global i32 0, align 4
@W_D_MODE = common dso_local global i32 0, align 4
@W_D_MODE_RACT = common dso_local global i32 0, align 4
@W_L1CMD_RST = common dso_local global i32 0, align 4
@W_L1CMD_ECK = common dso_local global i32 0, align 4
@W_D_EXIM = common dso_local global i32 0, align 4
@W_B_EXIM = common dso_local global i32 0, align 4
@W_D_CMDR = common dso_local global i32 0, align 4
@W_D_CMDR_RRST = common dso_local global i32 0, align 4
@W_D_CMDR_XRST = common dso_local global i32 0, align 4
@W_B_CMDR = common dso_local global i32 0, align 4
@W_B_CMDR_RRST = common dso_local global i32 0, align 4
@W_B_CMDR_XRST = common dso_local global i32 0, align 4
@W6692_USR = common dso_local global i64 0, align 8
@W_PCTL = common dso_local global i32 0, align 4
@W_XDATA = common dso_local global i32 0, align 4
@W_PCTL_OE5 = common dso_local global i32 0, align 4
@W_PCTL_OE4 = common dso_local global i32 0, align 4
@W_PCTL_OE2 = common dso_local global i32 0, align 4
@W_PCTL_OE1 = common dso_local global i32 0, align 4
@W_PCTL_OE0 = common dso_local global i32 0, align 4
@pots = common dso_local global i32 0, align 4
@led = common dso_local global i32 0, align 4
@W_XADDR = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s: W_XADDR=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w6692_hw*)* @initW6692 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initW6692(%struct.w6692_hw* %0) #0 {
  %2 = alloca %struct.w6692_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.w6692_hw* %0, %struct.w6692_hw** %2, align 8
  %4 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %5 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %4, i32 0, i32 9
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* @dbusy_timer_handler, align 4
  %8 = call i32 @timer_setup(i32* %6, i32 %7, i32 0)
  %9 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %10 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %9, i32 0, i32 7
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* @ISDN_P_NONE, align 4
  %14 = call i32 @w6692_mode(i32* %12, i32 %13)
  %15 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %16 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %15, i32 0, i32 7
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* @ISDN_P_NONE, align 4
  %20 = call i32 @w6692_mode(i32* %18, i32 %19)
  %21 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %22 = load i32, i32* @W_D_CTL, align 4
  %23 = call i32 @WriteW6692(%struct.w6692_hw* %21, i32 %22, i32 0)
  %24 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %25 = call i32 @disable_hwirq(%struct.w6692_hw* %24)
  %26 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %27 = load i32, i32* @W_D_SAM, align 4
  %28 = call i32 @WriteW6692(%struct.w6692_hw* %26, i32 %27, i32 255)
  %29 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %30 = load i32, i32* @W_D_TAM, align 4
  %31 = call i32 @WriteW6692(%struct.w6692_hw* %29, i32 %30, i32 255)
  %32 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %33 = load i32, i32* @W_D_MODE, align 4
  %34 = load i32, i32* @W_D_MODE_RACT, align 4
  %35 = call i32 @WriteW6692(%struct.w6692_hw* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @W_L1CMD_RST, align 4
  %37 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %38 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  %39 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %40 = load i32, i32* @W_L1CMD_RST, align 4
  %41 = call i32 @ph_command(%struct.w6692_hw* %39, i32 %40)
  %42 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %43 = load i32, i32* @W_L1CMD_ECK, align 4
  %44 = call i32 @ph_command(%struct.w6692_hw* %42, i32 %43)
  %45 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %46 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %45, i32 0, i32 0
  store i32 24, i32* %46, align 8
  %47 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %48 = load i32, i32* @W_D_EXIM, align 4
  %49 = call i32 @WriteW6692(%struct.w6692_hw* %47, i32 %48, i32 0)
  %50 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %51 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %50, i32 0, i32 7
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* @W_B_EXIM, align 4
  %55 = call i32 @WriteW6692B(i32* %53, i32 %54, i32 0)
  %56 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %57 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %56, i32 0, i32 7
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* @W_B_EXIM, align 4
  %61 = call i32 @WriteW6692B(i32* %59, i32 %60, i32 0)
  %62 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %63 = load i32, i32* @W_D_CMDR, align 4
  %64 = load i32, i32* @W_D_CMDR_RRST, align 4
  %65 = load i32, i32* @W_D_CMDR_XRST, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @WriteW6692(%struct.w6692_hw* %62, i32 %63, i32 %66)
  %68 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %69 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* @W_B_CMDR, align 4
  %73 = load i32, i32* @W_B_CMDR_RRST, align 4
  %74 = load i32, i32* @W_B_CMDR_XRST, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @WriteW6692B(i32* %71, i32 %72, i32 %75)
  %77 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %78 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %77, i32 0, i32 7
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* @W_B_CMDR, align 4
  %82 = load i32, i32* @W_B_CMDR_RRST, align 4
  %83 = load i32, i32* @W_B_CMDR_XRST, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @WriteW6692B(i32* %80, i32 %81, i32 %84)
  %86 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %87 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @W6692_USR, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %1
  %92 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %93 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %92, i32 0, i32 2
  store i32 128, i32* %93, align 8
  %94 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %95 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %94, i32 0, i32 3
  store i32 0, i32* %95, align 4
  %96 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %97 = load i32, i32* @W_PCTL, align 4
  %98 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %99 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @WriteW6692(%struct.w6692_hw* %96, i32 %97, i32 %100)
  %102 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %103 = load i32, i32* @W_XDATA, align 4
  %104 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %105 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @WriteW6692(%struct.w6692_hw* %102, i32 %103, i32 %106)
  br label %193

108:                                              ; preds = %1
  %109 = load i32, i32* @W_PCTL_OE5, align 4
  %110 = load i32, i32* @W_PCTL_OE4, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @W_PCTL_OE2, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @W_PCTL_OE1, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @W_PCTL_OE0, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %119 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %121 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %120, i32 0, i32 4
  store i32 0, i32* %121, align 8
  %122 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %123 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @pots, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %108
  %129 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %130 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, 6
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %128, %108
  %134 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %135 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @led, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %142 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, 4
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %140, %133
  %146 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %147 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @pots, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %145
  %153 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %154 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @led, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %192

159:                                              ; preds = %152, %145
  %160 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %161 = load i32, i32* @W_PCTL, align 4
  %162 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %163 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @WriteW6692(%struct.w6692_hw* %160, i32 %161, i32 %164)
  %166 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %167 = load i32, i32* @W_XADDR, align 4
  %168 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %169 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @WriteW6692(%struct.w6692_hw* %166, i32 %167, i32 %170)
  %172 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %173 = load i32, i32* @W_XDATA, align 4
  %174 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %175 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @WriteW6692(%struct.w6692_hw* %172, i32 %173, i32 %176)
  %178 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %179 = load i32, i32* @W_XADDR, align 4
  %180 = call i32 @ReadW6692(%struct.w6692_hw* %178, i32 %179)
  store i32 %180, i32* %3, align 4
  %181 = load i32, i32* @debug, align 4
  %182 = load i32, i32* @DEBUG_HW, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %159
  %186 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %187 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %3, align 4
  %190 = call i32 @pr_notice(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %185, %159
  br label %192

192:                                              ; preds = %191, %152
  br label %193

193:                                              ; preds = %192, %91
  ret void
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @w6692_mode(i32*, i32) #1

declare dso_local i32 @WriteW6692(%struct.w6692_hw*, i32, i32) #1

declare dso_local i32 @disable_hwirq(%struct.w6692_hw*) #1

declare dso_local i32 @ph_command(%struct.w6692_hw*, i32) #1

declare dso_local i32 @WriteW6692B(i32*, i32, i32) #1

declare dso_local i32 @ReadW6692(%struct.w6692_hw*, i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
