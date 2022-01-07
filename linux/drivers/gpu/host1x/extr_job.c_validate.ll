; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_firewall = type { i32, i64, i32, i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.host1x_job_gather = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_firewall*, %struct.host1x_job_gather*)* @validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate(%struct.host1x_firewall* %0, %struct.host1x_job_gather* %1) #0 {
  %3 = alloca %struct.host1x_firewall*, align 8
  %4 = alloca %struct.host1x_job_gather*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.host1x_firewall* %0, %struct.host1x_firewall** %3, align 8
  store %struct.host1x_job_gather* %1, %struct.host1x_job_gather** %4, align 8
  %10 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %11 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %10, i32 0, i32 7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  %16 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %4, align 8
  %17 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 4
  %21 = getelementptr inbounds i32, i32* %15, i64 %20
  store i32* %21, i32** %5, align 8
  %22 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %23 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %25 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %4, align 8
  %26 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %29 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %28, i32 0, i32 5
  store i64 %27, i64* %29, align 8
  %30 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %4, align 8
  %31 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %34 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %36 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %153, %2
  %38 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %39 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i1 [ false, %37 ], [ %45, %42 ]
  br i1 %47, label %48, label %154

48:                                               ; preds = %46
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %51 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, -268435456
  %57 = lshr i32 %56, 28
  store i32 %57, i32* %9, align 4
  %58 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %59 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %58, i32 0, i32 2
  store i32 0, i32* %59, align 8
  %60 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %61 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %60, i32 0, i32 3
  store i32 0, i32* %61, align 4
  %62 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %63 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %62, i32 0, i32 4
  store i32 0, i32* %63, align 8
  %64 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %65 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %69 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %69, align 8
  %72 = load i32, i32* %9, align 4
  switch i32 %72, label %150 [
    i32 0, label %73
    i32 1, label %101
    i32 2, label %117
    i32 3, label %133
    i32 4, label %149
    i32 14, label %149
  ]

73:                                               ; preds = %48
  %74 = load i32, i32* %8, align 4
  %75 = ashr i32 %74, 6
  %76 = and i32 %75, 1023
  %77 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %78 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, 63
  %81 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %82 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %8, align 4
  %84 = ashr i32 %83, 16
  %85 = and i32 %84, 4095
  %86 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %87 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @check_class(%struct.host1x_firewall* %88, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %73
  %94 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %95 = call i32 @check_mask(%struct.host1x_firewall* %94)
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %93, %73
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %155

100:                                              ; preds = %96
  br label %153

101:                                              ; preds = %48
  %102 = load i32, i32* %8, align 4
  %103 = ashr i32 %102, 16
  %104 = and i32 %103, 4095
  %105 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %106 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, 65535
  %109 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %110 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %112 = call i32 @check_incr(%struct.host1x_firewall* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %101
  br label %155

116:                                              ; preds = %101
  br label %153

117:                                              ; preds = %48
  %118 = load i32, i32* %8, align 4
  %119 = ashr i32 %118, 16
  %120 = and i32 %119, 4095
  %121 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %122 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, 65535
  %125 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %126 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %128 = call i32 @check_nonincr(%struct.host1x_firewall* %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %117
  br label %155

132:                                              ; preds = %117
  br label %153

133:                                              ; preds = %48
  %134 = load i32, i32* %8, align 4
  %135 = and i32 %134, 65535
  %136 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %137 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %8, align 4
  %139 = ashr i32 %138, 16
  %140 = and i32 %139, 4095
  %141 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %142 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %144 = call i32 @check_mask(%struct.host1x_firewall* %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %133
  br label %155

148:                                              ; preds = %133
  br label %153

149:                                              ; preds = %48, %48
  br label %153

150:                                              ; preds = %48
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %150, %149, %148, %132, %116, %100
  br label %37

154:                                              ; preds = %46
  br label %155

155:                                              ; preds = %154, %147, %131, %115, %99
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @check_class(%struct.host1x_firewall*, i32) #1

declare dso_local i32 @check_mask(%struct.host1x_firewall*) #1

declare dso_local i32 @check_incr(%struct.host1x_firewall*) #1

declare dso_local i32 @check_nonincr(%struct.host1x_firewall*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
