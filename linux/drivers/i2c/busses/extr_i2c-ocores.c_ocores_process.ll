; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ocores.c_ocores_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ocores.c_ocores_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocores_i2c = type { i64, i32, i32, i64, %struct.i2c_msg*, i32 }
%struct.i2c_msg = type { i32, i32*, i32 }

@STATE_DONE = common dso_local global i64 0, align 8
@STATE_ERROR = common dso_local global i64 0, align 8
@OCI2C_CMD = common dso_local global i32 0, align 4
@OCI2C_CMD_IACK = common dso_local global i32 0, align 4
@OCI2C_STAT_ARBLOST = common dso_local global i32 0, align 4
@OCI2C_CMD_STOP = common dso_local global i32 0, align 4
@STATE_START = common dso_local global i64 0, align 8
@STATE_WRITE = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@STATE_READ = common dso_local global i64 0, align 8
@OCI2C_STAT_NACK = common dso_local global i32 0, align 4
@OCI2C_DATA = common dso_local global i32 0, align 4
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@OCI2C_CMD_START = common dso_local global i32 0, align 4
@OCI2C_CMD_READ_NACK = common dso_local global i32 0, align 4
@OCI2C_CMD_READ_ACK = common dso_local global i32 0, align 4
@OCI2C_CMD_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocores_i2c*, i32)* @ocores_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocores_process(%struct.ocores_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.ocores_i2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ocores_i2c* %0, %struct.ocores_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %9 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %8, i32 0, i32 4
  %10 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  store %struct.i2c_msg* %10, %struct.i2c_msg** %5, align 8
  %11 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %12 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %11, i32 0, i32 2
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %16 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @STATE_DONE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %22 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @STATE_ERROR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20, %2
  %27 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %28 = load i32, i32* @OCI2C_CMD, align 4
  %29 = load i32, i32* @OCI2C_CMD_IACK, align 4
  %30 = call i32 @oc_setreg(%struct.ocores_i2c* %27, i32 %28, i32 %29)
  %31 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %32 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %31, i32 0, i32 5
  %33 = call i32 @wake_up(i32* %32)
  br label %214

34:                                               ; preds = %20
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @OCI2C_STAT_ARBLOST, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i64, i64* @STATE_ERROR, align 8
  %41 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %42 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %44 = load i32, i32* @OCI2C_CMD, align 4
  %45 = load i32, i32* @OCI2C_CMD_STOP, align 4
  %46 = call i32 @oc_setreg(%struct.ocores_i2c* %43, i32 %44, i32 %45)
  br label %214

47:                                               ; preds = %34
  %48 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %49 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @STATE_START, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %55 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @STATE_WRITE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %87

59:                                               ; preds = %53, %47
  %60 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @I2C_M_RD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i64, i64* @STATE_READ, align 8
  br label %70

68:                                               ; preds = %59
  %69 = load i64, i64* @STATE_WRITE, align 8
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i64 [ %67, %66 ], [ %69, %68 ]
  %72 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %73 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @OCI2C_STAT_NACK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %70
  %79 = load i64, i64* @STATE_ERROR, align 8
  %80 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %81 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %83 = load i32, i32* @OCI2C_CMD, align 4
  %84 = load i32, i32* @OCI2C_CMD_STOP, align 4
  %85 = call i32 @oc_setreg(%struct.ocores_i2c* %82, i32 %83, i32 %84)
  br label %214

86:                                               ; preds = %70
  br label %100

87:                                               ; preds = %53
  %88 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %89 = load i32, i32* @OCI2C_DATA, align 4
  %90 = call i32 @oc_getreg(%struct.ocores_i2c* %88, i32 %89)
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %95 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %93, i64 %98
  store i32 %90, i32* %99, align 4
  br label %100

100:                                              ; preds = %87, %86
  %101 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %102 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %105 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %171

108:                                              ; preds = %100
  %109 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %110 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, -1
  store i64 %112, i64* %110, align 8
  %113 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %114 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %113, i32 0, i32 4
  %115 = load %struct.i2c_msg*, %struct.i2c_msg** %114, align 8
  %116 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %115, i32 1
  store %struct.i2c_msg* %116, %struct.i2c_msg** %114, align 8
  %117 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %118 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %117, i32 0, i32 1
  store i32 0, i32* %118, align 8
  %119 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %120 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %119, i32 0, i32 4
  %121 = load %struct.i2c_msg*, %struct.i2c_msg** %120, align 8
  store %struct.i2c_msg* %121, %struct.i2c_msg** %5, align 8
  %122 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %123 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %162

126:                                              ; preds = %108
  %127 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %128 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @I2C_M_NOSTART, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %147, label %133

133:                                              ; preds = %126
  %134 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %135 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %134)
  store i32 %135, i32* %7, align 4
  %136 = load i64, i64* @STATE_START, align 8
  %137 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %138 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %140 = load i32, i32* @OCI2C_DATA, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @oc_setreg(%struct.ocores_i2c* %139, i32 %140, i32 %141)
  %143 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %144 = load i32, i32* @OCI2C_CMD, align 4
  %145 = load i32, i32* @OCI2C_CMD_START, align 4
  %146 = call i32 @oc_setreg(%struct.ocores_i2c* %143, i32 %144, i32 %145)
  br label %214

147:                                              ; preds = %126
  %148 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %149 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @I2C_M_RD, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load i64, i64* @STATE_READ, align 8
  br label %158

156:                                              ; preds = %147
  %157 = load i64, i64* @STATE_WRITE, align 8
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i64 [ %155, %154 ], [ %157, %156 ]
  %160 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %161 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  br label %170

162:                                              ; preds = %108
  %163 = load i64, i64* @STATE_DONE, align 8
  %164 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %165 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %164, i32 0, i32 0
  store i64 %163, i64* %165, align 8
  %166 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %167 = load i32, i32* @OCI2C_CMD, align 4
  %168 = load i32, i32* @OCI2C_CMD_STOP, align 4
  %169 = call i32 @oc_setreg(%struct.ocores_i2c* %166, i32 %167, i32 %168)
  br label %214

170:                                              ; preds = %158
  br label %171

171:                                              ; preds = %170, %100
  %172 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %173 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @STATE_READ, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %171
  %178 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %179 = load i32, i32* @OCI2C_CMD, align 4
  %180 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %181 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %184 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = sub nsw i32 %185, 1
  %187 = icmp eq i32 %182, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %177
  %189 = load i32, i32* @OCI2C_CMD_READ_NACK, align 4
  br label %192

190:                                              ; preds = %177
  %191 = load i32, i32* @OCI2C_CMD_READ_ACK, align 4
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi i32 [ %189, %188 ], [ %191, %190 ]
  %194 = call i32 @oc_setreg(%struct.ocores_i2c* %178, i32 %179, i32 %193)
  br label %213

195:                                              ; preds = %171
  %196 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %197 = load i32, i32* @OCI2C_DATA, align 4
  %198 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %199 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %202 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %200, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @oc_setreg(%struct.ocores_i2c* %196, i32 %197, i32 %207)
  %209 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %210 = load i32, i32* @OCI2C_CMD, align 4
  %211 = load i32, i32* @OCI2C_CMD_WRITE, align 4
  %212 = call i32 @oc_setreg(%struct.ocores_i2c* %209, i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %195, %192
  br label %214

214:                                              ; preds = %213, %162, %133, %78, %39, %26
  %215 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %216 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %215, i32 0, i32 2
  %217 = load i64, i64* %6, align 8
  %218 = call i32 @spin_unlock_irqrestore(i32* %216, i64 %217)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @oc_setreg(%struct.ocores_i2c*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @oc_getreg(%struct.ocores_i2c*, i32) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
