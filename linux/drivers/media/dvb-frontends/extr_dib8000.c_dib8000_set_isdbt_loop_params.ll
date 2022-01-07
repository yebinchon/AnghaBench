; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_isdbt_loop_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_isdbt_loop_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*, i32)* @dib8000_set_isdbt_loop_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8000_set_isdbt_loop_params(%struct.dib8000_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %9 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.dtv_frontend_properties* %13, %struct.dtv_frontend_properties** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %132 [
    i32 129, label %15
    i32 128, label %66
  ]

15:                                               ; preds = %2
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %17 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %15
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %27 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 11, %28
  %30 = shl i32 %29, 12
  %31 = or i32 %30, 1536
  %32 = or i32 %31, 64
  store i32 %32, i32* %6, align 4
  %33 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %34 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 10, %35
  %37 = or i32 96, %36
  store i32 %37, i32* %7, align 4
  br label %51

38:                                               ; preds = %20
  %39 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %40 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 10, %41
  %43 = shl i32 %42, 12
  %44 = or i32 %43, 1536
  %45 = or i32 %44, 96
  store i32 %45, i32* %6, align 4
  %46 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %47 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 9, %48
  %50 = or i32 96, %49
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %38, %25
  br label %65

52:                                               ; preds = %15
  %53 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %54 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 9, %55
  %57 = shl i32 %56, 12
  %58 = or i32 %57, 1536
  %59 = or i32 %58, 128
  store i32 %59, i32* %6, align 4
  %60 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %61 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 8, %62
  %64 = or i32 96, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %52, %51
  br label %132

66:                                               ; preds = %2
  %67 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %68 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %113

71:                                               ; preds = %66
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %71
  %77 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %78 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 13, %79
  %81 = shl i32 %80, 12
  %82 = or i32 %81, 1536
  %83 = or i32 %82, 64
  store i32 %83, i32* %6, align 4
  %84 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %85 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 12, %86
  %88 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %89 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 5, %90
  %92 = shl i32 %91, 5
  %93 = or i32 %87, %92
  store i32 %93, i32* %7, align 4
  br label %112

94:                                               ; preds = %71
  %95 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %96 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 12, %97
  %99 = shl i32 %98, 12
  %100 = or i32 %99, 1536
  %101 = or i32 %100, 96
  store i32 %101, i32* %6, align 4
  %102 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %103 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 11, %104
  %106 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %107 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 5, %108
  %110 = shl i32 %109, 5
  %111 = or i32 %105, %110
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %94, %76
  br label %131

113:                                              ; preds = %66
  %114 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %115 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 11, %116
  %118 = shl i32 %117, 12
  %119 = or i32 %118, 1536
  %120 = or i32 %119, 128
  store i32 %120, i32* %6, align 4
  %121 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %122 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 5, %123
  %125 = shl i32 %124, 5
  %126 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %127 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 10, %128
  %130 = or i32 %125, %129
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %113, %112
  br label %132

132:                                              ; preds = %2, %131, %65
  %133 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @dib8000_write_word(%struct.dib8000_state* %133, i32 32, i32 %134)
  %136 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @dib8000_write_word(%struct.dib8000_state* %136, i32 37, i32 %137)
  ret void
}

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
