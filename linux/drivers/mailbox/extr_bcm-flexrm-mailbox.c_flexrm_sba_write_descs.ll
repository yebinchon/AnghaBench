; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_sba_write_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_sba_write_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcm_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.brcm_sba_command* }
%struct.brcm_sba_command = type { i32, i32, i32, i32, i32, i32 }

@BRCM_SBA_CMD_HAS_RESP = common dso_local global i32 0, align 4
@BRCM_SBA_CMD_HAS_OUTPUT = common dso_local global i32 0, align 4
@BRCM_SBA_CMD_TYPE_B = common dso_local global i32 0, align 4
@BRCM_SBA_CMD_TYPE_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.brcm_message*, i64, i64, i8*, i64, i8*, i8*)* @flexrm_sba_write_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @flexrm_sba_write_descs(%struct.brcm_message* %0, i64 %1, i64 %2, i8* %3, i64 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.brcm_message*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.brcm_sba_command*, align 8
  %19 = alloca i8*, align 8
  store %struct.brcm_message* %0, %struct.brcm_message** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  store i64 0, i64* %17, align 8
  %20 = load i8*, i8** %11, align 8
  store i8* %20, i8** %19, align 8
  store i64 0, i64* %16, align 8
  br label %21

21:                                               ; preds = %181, %7
  %22 = load i64, i64* %16, align 8
  %23 = load %struct.brcm_message*, %struct.brcm_message** %8, align 8
  %24 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %22, %26
  br i1 %27, label %28, label %184

28:                                               ; preds = %21
  %29 = load %struct.brcm_message*, %struct.brcm_message** %8, align 8
  %30 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %31, align 8
  %33 = load i64, i64* %16, align 8
  %34 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %32, i64 %33
  store %struct.brcm_sba_command* %34, %struct.brcm_sba_command** %18, align 8
  %35 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %18, align 8
  %36 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BRCM_SBA_CMD_HAS_RESP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %28
  %42 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %18, align 8
  %43 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BRCM_SBA_CMD_HAS_OUTPUT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %41
  %49 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %18, align 8
  %50 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %18, align 8
  %53 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @flexrm_dst_desc(i32 %51, i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load i64, i64* %17, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i8*, i8** %13, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = call i32 @flexrm_enqueue_desc(i64 %56, i64 %57, i64 %58, i32 %59, i8** %11, i64* %12, i8* %60, i8* %61)
  %63 = load i64, i64* %17, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %17, align 8
  br label %90

65:                                               ; preds = %41, %28
  %66 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %18, align 8
  %67 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @BRCM_SBA_CMD_HAS_RESP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %65
  %73 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %18, align 8
  %74 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %18, align 8
  %77 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @flexrm_dstt_desc(i32 %75, i32 %78)
  store i32 %79, i32* %15, align 4
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i8*, i8** %13, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = call i32 @flexrm_enqueue_desc(i64 %80, i64 %81, i64 %82, i32 %83, i8** %11, i64* %12, i8* %84, i8* %85)
  %87 = load i64, i64* %17, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %17, align 8
  br label %89

89:                                               ; preds = %72, %65
  br label %90

90:                                               ; preds = %89, %48
  %91 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %18, align 8
  %92 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @BRCM_SBA_CMD_HAS_OUTPUT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %90
  %98 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %18, align 8
  %99 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %18, align 8
  %102 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @flexrm_dstt_desc(i32 %100, i32 %103)
  store i32 %104, i32* %15, align 4
  %105 = load i64, i64* %17, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i32, i32* %15, align 4
  %109 = load i8*, i8** %13, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = call i32 @flexrm_enqueue_desc(i64 %105, i64 %106, i64 %107, i32 %108, i8** %11, i64* %12, i8* %109, i8* %110)
  %112 = load i64, i64* %17, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %17, align 8
  br label %114

114:                                              ; preds = %97, %90
  %115 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %18, align 8
  %116 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @BRCM_SBA_CMD_TYPE_B, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %114
  %122 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %18, align 8
  %123 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @flexrm_imm_desc(i32 %124)
  store i32 %125, i32* %15, align 4
  %126 = load i64, i64* %17, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* %10, align 8
  %129 = load i32, i32* %15, align 4
  %130 = load i8*, i8** %13, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = call i32 @flexrm_enqueue_desc(i64 %126, i64 %127, i64 %128, i32 %129, i8** %11, i64* %12, i8* %130, i8* %131)
  %133 = load i64, i64* %17, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %17, align 8
  br label %149

135:                                              ; preds = %114
  %136 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %18, align 8
  %137 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @flexrm_immt_desc(i32 %138)
  store i32 %139, i32* %15, align 4
  %140 = load i64, i64* %17, align 8
  %141 = load i64, i64* %9, align 8
  %142 = load i64, i64* %10, align 8
  %143 = load i32, i32* %15, align 4
  %144 = load i8*, i8** %13, align 8
  %145 = load i8*, i8** %14, align 8
  %146 = call i32 @flexrm_enqueue_desc(i64 %140, i64 %141, i64 %142, i32 %143, i8** %11, i64* %12, i8* %144, i8* %145)
  %147 = load i64, i64* %17, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %17, align 8
  br label %149

149:                                              ; preds = %135, %121
  %150 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %18, align 8
  %151 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @BRCM_SBA_CMD_TYPE_B, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %149
  %157 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %18, align 8
  %158 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @BRCM_SBA_CMD_TYPE_C, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %156, %149
  %164 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %18, align 8
  %165 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.brcm_sba_command*, %struct.brcm_sba_command** %18, align 8
  %168 = getelementptr inbounds %struct.brcm_sba_command, %struct.brcm_sba_command* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @flexrm_srct_desc(i32 %166, i32 %169)
  store i32 %170, i32* %15, align 4
  %171 = load i64, i64* %17, align 8
  %172 = load i64, i64* %9, align 8
  %173 = load i64, i64* %10, align 8
  %174 = load i32, i32* %15, align 4
  %175 = load i8*, i8** %13, align 8
  %176 = load i8*, i8** %14, align 8
  %177 = call i32 @flexrm_enqueue_desc(i64 %171, i64 %172, i64 %173, i32 %174, i8** %11, i64* %12, i8* %175, i8* %176)
  %178 = load i64, i64* %17, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %17, align 8
  br label %180

180:                                              ; preds = %163, %156
  br label %181

181:                                              ; preds = %180
  %182 = load i64, i64* %16, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %16, align 8
  br label %21

184:                                              ; preds = %21
  %185 = load i8*, i8** %11, align 8
  %186 = load i64, i64* %12, align 8
  %187 = icmp ne i64 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i32 @flexrm_null_desc(i32 %189)
  %191 = call i32 @flexrm_write_desc(i8* %185, i32 %190)
  %192 = call i32 (...) @wmb()
  %193 = load i8*, i8** %19, align 8
  %194 = call i32 @flexrm_flip_header_toggle(i8* %193)
  %195 = load i8*, i8** %11, align 8
  ret i8* %195
}

declare dso_local i32 @flexrm_dst_desc(i32, i32) #1

declare dso_local i32 @flexrm_enqueue_desc(i64, i64, i64, i32, i8**, i64*, i8*, i8*) #1

declare dso_local i32 @flexrm_dstt_desc(i32, i32) #1

declare dso_local i32 @flexrm_imm_desc(i32) #1

declare dso_local i32 @flexrm_immt_desc(i32) #1

declare dso_local i32 @flexrm_srct_desc(i32, i32) #1

declare dso_local i32 @flexrm_write_desc(i8*, i32) #1

declare dso_local i32 @flexrm_null_desc(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @flexrm_flip_header_toggle(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
