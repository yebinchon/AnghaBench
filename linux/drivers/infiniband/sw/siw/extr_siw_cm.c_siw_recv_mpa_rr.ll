; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_recv_mpa_rr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_recv_mpa_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_cep = type { %struct.TYPE_4__, %struct.socket* }
%struct.TYPE_4__ = type { i32, i8*, %struct.mpa_rr }
%struct.mpa_rr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.socket = type { i32 }

@ECONNABORTED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MPA_MAX_PRIVDATA = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"peer EOF\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"error: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"peer sent extra data: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%d bytes private data received\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_cep*)* @siw_recv_mpa_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_recv_mpa_rr(%struct.siw_cep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siw_cep*, align 8
  %4 = alloca %struct.mpa_rr*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.siw_cep* %0, %struct.siw_cep** %3, align 8
  %10 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %11 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store %struct.mpa_rr* %12, %struct.mpa_rr** %4, align 8
  %13 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %14 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %13, i32 0, i32 1
  %15 = load %struct.socket*, %struct.socket** %14, align 8
  store %struct.socket* %15, %struct.socket** %5, align 8
  %16 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %17 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 4
  br i1 %21, label %22, label %73

22:                                               ; preds = %1
  %23 = load %struct.socket*, %struct.socket** %5, align 8
  %24 = load %struct.mpa_rr*, %struct.mpa_rr** %4, align 8
  %25 = bitcast %struct.mpa_rr* %24 to i8*
  %26 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %27 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %25, i64 %30
  %32 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %33 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = sub i64 4, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @ksock_recv(%struct.socket* %23, i8* %31, i32 %38, i32 0)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %22
  %43 = load i32, i32* @ECONNABORTED, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %192

45:                                               ; preds = %22
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %48 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, %46
  store i32 %51, i32* %49, align 8
  %52 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %53 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %56, 4
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %192

61:                                               ; preds = %45
  %62 = load %struct.mpa_rr*, %struct.mpa_rr** %4, align 8
  %63 = getelementptr inbounds %struct.mpa_rr, %struct.mpa_rr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @be16_to_cpu(i32 %65)
  %67 = load i64, i64* @MPA_MAX_PRIVDATA, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @EPROTO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %192

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %1
  %74 = load %struct.mpa_rr*, %struct.mpa_rr** %4, align 8
  %75 = getelementptr inbounds %struct.mpa_rr, %struct.mpa_rr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @be16_to_cpu(i32 %77)
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %83 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = sub i64 %86, 4
  %88 = sub i64 %81, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %124, label %92

92:                                               ; preds = %73
  %93 = load %struct.socket*, %struct.socket** %5, align 8
  %94 = bitcast i32* %9 to i8*
  %95 = load i32, i32* @MSG_DONTWAIT, align 4
  %96 = call i32 @ksock_recv(%struct.socket* %93, i8* %94, i32 4, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @EAGAIN, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %192

102:                                              ; preds = %92
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %107 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* @EPIPE, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %192

110:                                              ; preds = %102
  %111 = load i32, i32* %7, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %2, align 4
  br label %192

118:                                              ; preds = %110
  %119 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @EPROTO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %192

124:                                              ; preds = %73
  %125 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %126 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %147, label %130

130:                                              ; preds = %124
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 4
  %133 = load i32, i32* @GFP_KERNEL, align 4
  %134 = call i8* @kmalloc(i32 %132, i32 %133)
  %135 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %136 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  store i8* %134, i8** %137, align 8
  %138 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %139 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %130
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %192

146:                                              ; preds = %130
  br label %147

147:                                              ; preds = %146, %124
  %148 = load %struct.socket*, %struct.socket** %5, align 8
  %149 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %150 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %154 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %152, i64 %157
  %159 = getelementptr inbounds i8, i8* %158, i64 -4
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 4
  %162 = load i32, i32* @MSG_DONTWAIT, align 4
  %163 = call i32 @ksock_recv(%struct.socket* %148, i8* %159, i32 %161, i32 %162)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %147
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %2, align 4
  br label %192

168:                                              ; preds = %147
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* @EPROTO, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %2, align 4
  br label %192

175:                                              ; preds = %168
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %178 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, %176
  store i32 %181, i32* %179, align 8
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %175
  %186 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %187 = load i32, i32* %6, align 4
  %188 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %186, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %187)
  store i32 0, i32* %2, align 4
  br label %192

189:                                              ; preds = %175
  %190 = load i32, i32* @EAGAIN, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %189, %185, %172, %166, %143, %118, %113, %105, %101, %69, %58, %42
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32 @ksock_recv(%struct.socket*, i8*, i32, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @siw_dbg_cep(%struct.siw_cep*, i8*, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
