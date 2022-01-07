; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp887x.c_sp887x_setup_frontend_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp887x.c_sp887x_setup_frontend_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.sp887x_state*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_3__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.1*, i32*)*, i32 (%struct.dvb_frontend.2*)* }
%struct.dvb_frontend.1 = type opaque
%struct.dvb_frontend.2 = type opaque
%struct.sp887x_state = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_2K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @sp887x_setup_frontend_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp887x_setup_frontend_parameters(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.sp887x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 2
  store %struct.dtv_frontend_properties* %11, %struct.dtv_frontend_properties** %4, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  %14 = load %struct.sp887x_state*, %struct.sp887x_state** %13, align 8
  store %struct.sp887x_state* %14, %struct.sp887x_state** %5, align 8
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %16 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 8000000
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %21 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 7000000
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 6000000
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %165

32:                                               ; preds = %24, %19, %1
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %34 = call i32 @configure_reg0xc05(%struct.dtv_frontend_properties* %33, i32* %9)
  store i32 %34, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %165

38:                                               ; preds = %32
  %39 = load %struct.sp887x_state*, %struct.sp887x_state** %5, align 8
  %40 = call i32 @sp887x_microcontroller_stop(%struct.sp887x_state* %39)
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32 (%struct.dvb_frontend.2*)*, i32 (%struct.dvb_frontend.2*)** %44, align 8
  %46 = icmp ne i32 (%struct.dvb_frontend.2*)* %45, null
  br i1 %46, label %47, label %70

47:                                               ; preds = %38
  %48 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %49 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32 (%struct.dvb_frontend.2*)*, i32 (%struct.dvb_frontend.2*)** %51, align 8
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %54 = bitcast %struct.dvb_frontend* %53 to %struct.dvb_frontend.2*
  %55 = call i32 %52(%struct.dvb_frontend.2* %54)
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %57 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %47
  %62 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %63 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %64, align 8
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %67 = bitcast %struct.dvb_frontend* %66 to %struct.dvb_frontend.0*
  %68 = call i32 %65(%struct.dvb_frontend.0* %67, i32 0)
  br label %69

69:                                               ; preds = %61, %47
  br label %70

70:                                               ; preds = %69, %38
  %71 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %72 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32 (%struct.dvb_frontend.1*, i32*)*, i32 (%struct.dvb_frontend.1*, i32*)** %74, align 8
  %76 = icmp ne i32 (%struct.dvb_frontend.1*, i32*)* %75, null
  br i1 %76, label %77, label %100

77:                                               ; preds = %70
  %78 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %79 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32 (%struct.dvb_frontend.1*, i32*)*, i32 (%struct.dvb_frontend.1*, i32*)** %81, align 8
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %84 = bitcast %struct.dvb_frontend* %83 to %struct.dvb_frontend.1*
  %85 = call i32 %82(%struct.dvb_frontend.1* %84, i32* %6)
  %86 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %87 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %88, align 8
  %90 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %77
  %92 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %93 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %94, align 8
  %96 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %97 = bitcast %struct.dvb_frontend* %96 to %struct.dvb_frontend.0*
  %98 = call i32 %95(%struct.dvb_frontend.0* %97, i32 0)
  br label %99

99:                                               ; preds = %91, %77
  br label %104

100:                                              ; preds = %70
  %101 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %102 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %100, %99
  %105 = load %struct.sp887x_state*, %struct.sp887x_state** %5, align 8
  %106 = call i32 @sp887x_readreg(%struct.sp887x_state* %105, i32 512)
  %107 = load %struct.sp887x_state*, %struct.sp887x_state** %5, align 8
  %108 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @sp887x_correct_offsets(%struct.sp887x_state* %107, %struct.dtv_frontend_properties* %108, i32 %109)
  %111 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %112 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 6000000
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  store i32 2, i32* %8, align 4
  br label %124

116:                                              ; preds = %104
  %117 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %118 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 7000000
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 1, i32* %8, align 4
  br label %123

122:                                              ; preds = %116
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %122, %121
  br label %124

124:                                              ; preds = %123, %115
  %125 = load %struct.sp887x_state*, %struct.sp887x_state** %5, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @sp887x_writereg(%struct.sp887x_state* %125, i32 785, i32 %126)
  %128 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %129 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @TRANSMISSION_MODE_2K, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load %struct.sp887x_state*, %struct.sp887x_state** %5, align 8
  %135 = call i32 @sp887x_writereg(%struct.sp887x_state* %134, i32 824, i32 0)
  br label %139

136:                                              ; preds = %124
  %137 = load %struct.sp887x_state*, %struct.sp887x_state** %5, align 8
  %138 = call i32 @sp887x_writereg(%struct.sp887x_state* %137, i32 824, i32 1)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load %struct.sp887x_state*, %struct.sp887x_state** %5, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @sp887x_writereg(%struct.sp887x_state* %140, i32 3077, i32 %141)
  %143 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %144 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 6000000
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  store i32 16, i32* %8, align 4
  br label %156

148:                                              ; preds = %139
  %149 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %150 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 7000000
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  store i32 24, i32* %8, align 4
  br label %155

154:                                              ; preds = %148
  store i32 0, i32* %8, align 4
  br label %155

155:                                              ; preds = %154, %153
  br label %156

156:                                              ; preds = %155, %147
  %157 = load %struct.sp887x_state*, %struct.sp887x_state** %5, align 8
  %158 = load i32, i32* %8, align 4
  %159 = or i32 352, %158
  %160 = call i32 @sp887x_writereg(%struct.sp887x_state* %157, i32 3860, i32 %159)
  %161 = load %struct.sp887x_state*, %struct.sp887x_state** %5, align 8
  %162 = call i32 @sp887x_writereg(%struct.sp887x_state* %161, i32 3861, i32 0)
  %163 = load %struct.sp887x_state*, %struct.sp887x_state** %5, align 8
  %164 = call i32 @sp887x_microcontroller_start(%struct.sp887x_state* %163)
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %156, %36, %29
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @configure_reg0xc05(%struct.dtv_frontend_properties*, i32*) #1

declare dso_local i32 @sp887x_microcontroller_stop(%struct.sp887x_state*) #1

declare dso_local i32 @sp887x_readreg(%struct.sp887x_state*, i32) #1

declare dso_local i32 @sp887x_correct_offsets(%struct.sp887x_state*, %struct.dtv_frontend_properties*, i32) #1

declare dso_local i32 @sp887x_writereg(%struct.sp887x_state*, i32, i32) #1

declare dso_local i32 @sp887x_microcontroller_start(%struct.sp887x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
