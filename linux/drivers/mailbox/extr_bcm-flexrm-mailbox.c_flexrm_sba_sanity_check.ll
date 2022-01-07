; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_sba_sanity_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_sba_sanity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcm_message = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i64 }

@BRCM_SBA_CMD_TYPE_B = common dso_local global i32 0, align 4
@BRCM_SBA_CMD_TYPE_C = common dso_local global i32 0, align 4
@BRCM_SBA_CMD_HAS_OUTPUT = common dso_local global i32 0, align 4
@SRCT_LENGTH_MASK = common dso_local global i64 0, align 8
@BRCM_SBA_CMD_HAS_RESP = common dso_local global i32 0, align 4
@DSTT_LENGTH_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcm_message*)* @flexrm_sba_sanity_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexrm_sba_sanity_check(%struct.brcm_message* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcm_message*, align 8
  %4 = alloca i64, align 8
  store %struct.brcm_message* %0, %struct.brcm_message** %3, align 8
  %5 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %6 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %12 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %163

17:                                               ; preds = %10
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %159, %17
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %21 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %19, %23
  br i1 %24, label %25, label %162

25:                                               ; preds = %18
  %26 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %27 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BRCM_SBA_CMD_TYPE_B, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %25
  %38 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %39 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BRCM_SBA_CMD_TYPE_C, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %37, %25
  %50 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %51 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BRCM_SBA_CMD_HAS_OUTPUT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %163

62:                                               ; preds = %49, %37
  %63 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %64 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BRCM_SBA_CMD_TYPE_B, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %62
  %75 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %76 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i64, i64* %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SRCT_LENGTH_MASK, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %163

86:                                               ; preds = %74, %62
  %87 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %88 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i64, i64* %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @BRCM_SBA_CMD_TYPE_C, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %86
  %99 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %100 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i64, i64* %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SRCT_LENGTH_MASK, align 8
  %108 = icmp sgt i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %163

110:                                              ; preds = %98, %86
  %111 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %112 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i64, i64* %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @BRCM_SBA_CMD_HAS_RESP, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %110
  %123 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %124 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = load i64, i64* %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @DSTT_LENGTH_MASK, align 8
  %132 = icmp sgt i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %163

134:                                              ; preds = %122, %110
  %135 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %136 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = load i64, i64* %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @BRCM_SBA_CMD_HAS_OUTPUT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %134
  %147 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %148 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = load i64, i64* %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @DSTT_LENGTH_MASK, align 8
  %156 = icmp sgt i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %146
  store i32 0, i32* %2, align 4
  br label %163

158:                                              ; preds = %146, %134
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %4, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %4, align 8
  br label %18

162:                                              ; preds = %18
  store i32 1, i32* %2, align 4
  br label %163

163:                                              ; preds = %162, %157, %133, %109, %85, %61, %16
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
