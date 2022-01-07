; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c___i2c_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c___i2c_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { {}*, {}* }
%struct.i2c_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@i2c_trace_msg_key = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__i2c_transfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %14 = icmp ne %struct.i2c_msg* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 1
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi i1 [ true, %3 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %184

26:                                               ; preds = %18
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %28 = call i32 @__i2c_check_suspended(%struct.i2c_adapter* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %184

33:                                               ; preds = %26
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @i2c_check_for_quirks(%struct.i2c_adapter* %39, %struct.i2c_msg* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %184

47:                                               ; preds = %38, %33
  %48 = call i64 @static_branch_unlikely(i32* @i2c_trace_msg_key)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %86

50:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %82, %50
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %85

55:                                               ; preds = %51
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i64 %58
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @I2C_M_RD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i64 %69
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @trace_i2c_read(%struct.i2c_adapter* %66, %struct.i2c_msg* %70, i32 %71)
  br label %81

73:                                               ; preds = %55
  %74 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %75 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i64 %77
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @trace_i2c_write(%struct.i2c_adapter* %74, %struct.i2c_msg* %78, i32 %79)
  br label %81

81:                                               ; preds = %73, %65
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %51

85:                                               ; preds = %51
  br label %86

86:                                               ; preds = %85, %47
  %87 = load i64, i64* @jiffies, align 8
  store i64 %87, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %144, %86
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %91 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sle i32 %89, %92
  br i1 %93, label %94, label %147

94:                                               ; preds = %88
  %95 = call i64 (...) @i2c_in_atomic_xfer_mode()
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %94
  %98 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %99 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = bitcast {}** %101 to i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)**
  %103 = load i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)** %102, align 8
  %104 = icmp ne i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* %103, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %97
  %106 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %107 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = bitcast {}** %109 to i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)**
  %111 = load i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)** %110, align 8
  %112 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %113 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 %111(%struct.i2c_adapter* %112, %struct.i2c_msg* %113, i32 %114)
  store i32 %115, i32* %9, align 4
  br label %127

116:                                              ; preds = %97, %94
  %117 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %118 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %117, i32 0, i32 2
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = bitcast {}** %120 to i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)**
  %122 = load i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)** %121, align 8
  %123 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %124 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i32 %122(%struct.i2c_adapter* %123, %struct.i2c_msg* %124, i32 %125)
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %116, %105
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @EAGAIN, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %147

133:                                              ; preds = %127
  %134 = load i64, i64* @jiffies, align 8
  %135 = load i64, i64* %8, align 8
  %136 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %137 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %135, %138
  %140 = call i64 @time_after(i64 %134, i64 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  br label %147

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %88

147:                                              ; preds = %142, %132, %88
  %148 = call i64 @static_branch_unlikely(i32* @i2c_trace_msg_key)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %182

150:                                              ; preds = %147
  store i32 0, i32* %12, align 4
  br label %151

151:                                              ; preds = %174, %150
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %177

155:                                              ; preds = %151
  %156 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %156, i64 %158
  %160 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @I2C_M_RD, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %155
  %166 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %167 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %167, i64 %169
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @trace_i2c_reply(%struct.i2c_adapter* %166, %struct.i2c_msg* %170, i32 %171)
  br label %173

173:                                              ; preds = %165, %155
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %151

177:                                              ; preds = %151
  %178 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @trace_i2c_result(%struct.i2c_adapter* %178, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %177, %147
  %183 = load i32, i32* %9, align 4
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %182, %44, %31, %23
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__i2c_check_suspended(%struct.i2c_adapter*) #1

declare dso_local i64 @i2c_check_for_quirks(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i64 @static_branch_unlikely(i32*) #1

declare dso_local i32 @trace_i2c_read(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @trace_i2c_write(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i64 @i2c_in_atomic_xfer_mode(...) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @trace_i2c_reply(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @trace_i2c_result(%struct.i2c_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
