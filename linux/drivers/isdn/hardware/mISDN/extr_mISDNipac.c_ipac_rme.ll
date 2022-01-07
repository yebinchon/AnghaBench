; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_ipac_rme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_ipac_rme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hscx_hw = type { i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@IPAC_TYPE_IPACX = common dso_local global i32 0, align 4
@IPACX_RSTAB = common dso_local global i32 0, align 4
@IPAC_RSTAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: B%1d RSTAB %02x\0A\00", align 1
@DEBUG_HW_BCHANNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: B%1d invalid frame\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: B%1d RDO proto=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s: B%1d CRC error\0A\00", align 1
@IPACX_RBCLB = common dso_local global i32 0, align 4
@IPAC_RBCLB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: B%1d frame to short %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hscx_hw*)* @ipac_rme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipac_rme(%struct.hscx_hw* %0) #0 {
  %2 = alloca %struct.hscx_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hscx_hw* %0, %struct.hscx_hw** %2, align 8
  %5 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %6 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IPAC_TYPE_IPACX, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %15 = load i32, i32* @IPACX_RSTAB, align 4
  %16 = call i32 @ReadHSCX(%struct.hscx_hw* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %19 = load i32, i32* @IPAC_RSTAB, align 4
  %20 = call i32 @ReadHSCX(%struct.hscx_hw* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %23 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %28 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 240
  %35 = icmp ne i32 %34, 160
  br i1 %35, label %36, label %115

36:                                               ; preds = %21
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 128
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %36
  %41 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %42 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DEBUG_HW_BCHANNEL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %50 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %55 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, i32, i32, ...) @pr_notice(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %48, %40
  br label %60

60:                                               ; preds = %59, %36
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 64
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %60
  %65 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %66 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DEBUG_HW_BCHANNEL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %64
  %73 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %74 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %79 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %83 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, i32, i32, ...) @pr_notice(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %72, %64
  br label %88

88:                                               ; preds = %87, %60
  %89 = load i32, i32* %4, align 4
  %90 = and i32 %89, 32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %112, label %92

92:                                               ; preds = %88
  %93 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %94 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @DEBUG_HW_BCHANNEL, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %92
  %101 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %102 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %107 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, i32, i32, ...) @pr_notice(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %109)
  br label %111

111:                                              ; preds = %100, %92
  br label %112

112:                                              ; preds = %111, %88
  %113 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %114 = call i32 @hscx_cmdr(%struct.hscx_hw* %113, i32 128)
  br label %201

115:                                              ; preds = %21
  %116 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %117 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @IPAC_TYPE_IPACX, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %115
  %125 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %126 = load i32, i32* @IPACX_RBCLB, align 4
  %127 = call i32 @ReadHSCX(%struct.hscx_hw* %125, i32 %126)
  store i32 %127, i32* %3, align 4
  br label %132

128:                                              ; preds = %115
  %129 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %130 = load i32, i32* @IPAC_RBCLB, align 4
  %131 = call i32 @ReadHSCX(%struct.hscx_hw* %129, i32 %130)
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %128, %124
  %133 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %134 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %135, 1
  %137 = load i32, i32* %3, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %3, align 4
  %139 = load i32, i32* %3, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %132
  %142 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %143 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %141, %132
  %146 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @hscx_empty_fifo(%struct.hscx_hw* %146, i32 %147)
  %149 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %150 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = icmp ne %struct.TYPE_5__* %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %145
  br label %201

155:                                              ; preds = %145
  %156 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %157 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %163, label %185

163:                                              ; preds = %155
  %164 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %165 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %164, i32 0, i32 2
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %170 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %174 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %168, i32 %172, i32 %178)
  %180 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %181 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = call i32 @skb_trim(%struct.TYPE_5__* %183, i32 0)
  br label %201

185:                                              ; preds = %155
  %186 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %187 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %191 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %195, 1
  %197 = call i32 @skb_trim(%struct.TYPE_5__* %189, i32 %196)
  %198 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %199 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %198, i32 0, i32 1
  %200 = call i32 @recv_Bchannel(%struct.TYPE_6__* %199, i32 0, i32 0)
  br label %201

201:                                              ; preds = %112, %154, %185, %163
  ret void
}

declare dso_local i32 @ReadHSCX(%struct.hscx_hw*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32, ...) #1

declare dso_local i32 @hscx_cmdr(%struct.hscx_hw*, i32) #1

declare dso_local i32 @hscx_empty_fifo(%struct.hscx_hw*, i32) #1

declare dso_local i32 @skb_trim(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @recv_Bchannel(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
