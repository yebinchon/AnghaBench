; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_get_time_us.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_get_time_us.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @dib8000_get_time_us to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_get_time_us(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dib8000_state*, align 8
  %7 = alloca %struct.dtv_frontend_properties*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 0
  %24 = load %struct.dib8000_state*, %struct.dib8000_state** %23, align 8
  store %struct.dib8000_state* %24, %struct.dib8000_state** %6, align 8
  %25 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %26 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %27, i64 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.dtv_frontend_properties* %30, %struct.dtv_frontend_properties** %7, align 8
  store i32 1, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %38

37:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 3, i32* %9, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %45 [
    i32 135, label %42
    i32 134, label %43
    i32 137, label %44
    i32 136, label %46
  ]

42:                                               ; preds = %38
  store i32 4, i32* %15, align 4
  br label %47

43:                                               ; preds = %38
  store i32 8, i32* %15, align 4
  br label %47

44:                                               ; preds = %38
  store i32 16, i32* %15, align 4
  br label %47

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %38, %45
  store i32 32, i32* %15, align 4
  br label %47

47:                                               ; preds = %46, %44, %43, %42
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %53 [
    i32 130, label %51
    i32 129, label %52
    i32 128, label %54
  ]

51:                                               ; preds = %47
  store i32 4, i32* %21, align 4
  br label %55

52:                                               ; preds = %47
  store i32 2, i32* %21, align 4
  br label %55

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %47, %53
  store i32 1, i32* %21, align 4
  br label %55

55:                                               ; preds = %54, %52, %51
  store i32 0, i32* %14, align 4
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %123, %55
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %126

61:                                               ; preds = %57
  %62 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %63 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %19, align 4
  %74 = icmp sgt i32 %73, 13
  br i1 %74, label %75, label %76

75:                                               ; preds = %72, %61
  br label %123

76:                                               ; preds = %72
  %77 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %78 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %87 [
    i32 143, label %85
    i32 131, label %85
    i32 133, label %86
    i32 132, label %88
  ]

85:                                               ; preds = %76, %76
  store i32 2, i32* %18, align 4
  br label %89

86:                                               ; preds = %76
  store i32 4, i32* %18, align 4
  br label %89

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %76, %87
  store i32 6, i32* %18, align 4
  br label %89

89:                                               ; preds = %88, %86, %85
  %90 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %91 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %102 [
    i32 142, label %98
    i32 141, label %99
    i32 140, label %100
    i32 139, label %101
    i32 138, label %103
  ]

98:                                               ; preds = %89
  store i32 1, i32* %16, align 4
  store i32 2, i32* %17, align 4
  br label %104

99:                                               ; preds = %89
  store i32 2, i32* %16, align 4
  store i32 3, i32* %17, align 4
  br label %104

100:                                              ; preds = %89
  store i32 3, i32* %16, align 4
  store i32 4, i32* %17, align 4
  br label %104

101:                                              ; preds = %89
  store i32 5, i32* %16, align 4
  store i32 6, i32* %17, align 4
  br label %104

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %89, %102
  store i32 7, i32* %16, align 4
  store i32 8, i32* %17, align 4
  br label %104

104:                                              ; preds = %103, %101, %100, %99, %98
  %105 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %106 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %105, i32 0, i32 2
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* %16, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %21, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* %19, align 4
  %119 = mul nsw i32 %117, %118
  %120 = mul nsw i32 %119, 384
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %104, %75
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %57

126:                                              ; preds = %57
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %159

130:                                              ; preds = %126
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %132, 1575000000
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @do_div(i32 %136, i32 %137)
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %139, %140
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %14, align 4
  %143 = sdiv i32 %142, 2
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @do_div(i32 %146, i32 %147)
  %149 = load i32, i32* %20, align 4
  %150 = mul nsw i32 96768, %149
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %15, align 4
  %154 = sdiv i32 %152, %153
  %155 = add nsw i32 %151, %154
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %130, %129
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
